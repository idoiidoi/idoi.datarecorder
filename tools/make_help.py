#!/usr/bin/env python3
"""Generate help/idoi.datarecorder.maxhelp.

The help patch is generated so that its layout stays consistent and diffs stay
readable. Edit this script and run `python3 tools/make_help.py`.
"""

import json
from pathlib import Path

OUT = Path(__file__).resolve().parent.parent / "help" / "idoi.datarecorder.maxhelp"

boxes = []
lines = []
_n = 0


def box(maxclass, rect, text=None, inlets=1, outlets=0, outlettype=None, **extra):
    global _n
    _n += 1
    b = {
        "id": f"obj-{_n}",
        "maxclass": maxclass,
        "numinlets": inlets,
        "numoutlets": outlets,
        "patching_rect": list(map(float, rect)),
    }
    if outlets:
        b["outlettype"] = outlettype or [""] * outlets
    if text is not None:
        b["text"] = text
    b.update(extra)
    boxes.append({"box": b})
    return b["id"]


def obj(text, x, y, w=None, inlets=1, outlets=1, outlettype=None):
    return box("newobj", (x, y, w or max(40, 7 * len(text) + 14), 22), text, inlets, outlets, outlettype)


def msg(text, x, y, w=None):
    return box("message", (x, y, w or max(30, 7 * len(text) + 14), 22), text, 2, 1, [""])


def toggle(x, y):
    return box("toggle", (x, y, 20, 20), None, 1, 1, ["int"], parameter_enable=0)


def button(x, y):
    return box("button", (x, y, 20, 20), None, 1, 1, ["bang"], parameter_enable=0)


def comment(text, x, y, w=260, h=None, **extra):
    nlines = text.count("\n") + 1
    return box("comment", (x, y, w, h or 20 * nlines), text, 1, 0, **extra)


def connect(src, dst, outlet=0, inlet=0):
    lines.append({"patchline": {"source": [src, outlet], "destination": [dst, inlet]}})


# --- title -------------------------------------------------------------------
comment("idoi.datarecorder", 20, 12, 300, 32, fontsize=22.0, fontface=1)
comment("Record lists to timestamped CSV files (v8ui, Max 9+)", 20, 44, 460)

# --- recorder ------------------------------------------------------------------
# the help records to ~/Documents so test takes do not pile up inside the package
recorder = box("v8ui", (20, 330, 330, 56), None, 1, 1, [""],
               filename="idoi.datarecorder.js", parameter_enable=0, border=0,
               embedstate=[["folder", "~/Documents"]])
comment("click to start / stop", 360, 348, 200)

# --- demo data -----------------------------------------------------------------
comment("demo data: 2 channels at 20 Hz", 20, 76, 260)
t_on = toggle(20, 100)
loadmess = obj("loadmess 1", 50, 100)
metro = obj("metro 50", 20, 128, inlets=2, outlets=1, outlettype=["bang"])
trig = obj("t b b", 20, 156, inlets=1, outlets=2, outlettype=["bang", "bang"])
cnt = obj("counter", 20, 186, inlets=3, outlets=4, outlettype=["int", "", "", "int"])
sine = obj("expr sin($i1 * 0.05)", 20, 214)
rnd = obj("random 1000", 160, 186, inlets=2, outlets=1, outlettype=["int"])
rsc = obj("/ 1000.", 160, 214, inlets=2, outlets=1, outlettype=["float"])
pack = obj("pack 0. 0.", 20, 250, inlets=2, outlets=1)

connect(loadmess, t_on)
connect(t_on, metro)
connect(metro, trig)
# t fires right to left: the cold inlet of pack first, the hot one last
connect(trig, rnd, 1)
connect(trig, cnt, 0)
connect(cnt, sine)
connect(rnd, rsc)
connect(sine, pack, 0, 0)
connect(rsc, pack, 0, 1)
connect(pack, recorder)
comment("Each list, number or message that arrives\nwhile recording becomes one row.", 100, 250, 260)

# --- messages ------------------------------------------------------------------
X = 400
y = 76
comment("messages / attributes", X, y, 200, fontface=1)


def control(label, note, kind="msg", width=None):
    """A labelled control wired into the recorder. Returns the toggle, if any."""
    global y
    y += 26
    widget = None
    if kind == "msg":
        m = msg(label, X, y, width)
        connect(m, recorder)
    elif kind == "toggle":
        widget = toggle(X, y + 1)
        m = msg(label, X + 28, y, width)
        connect(widget, m)
        connect(m, recorder)
    comment(note, X + 190, y + 1, 280)
    return widget


t_record = control("record $1", "start / stop (no argument toggles)", "toggle")
r_record = obj("r dr.help.rec", X - 240, y, 110)
set_record = obj("prepend set", X - 120, y, 80)
connect(r_record, set_record)
connect(set_record, t_record)

control("marker take1", "any message is recorded with its name first")
control("prefix take_", "file name prefix: take_20261004_231500.csv")
control("columns sine noise", "header names (missing ones become ch<N>)")
control("header $1", "write a header row", "toggle")
control("elapsed $1", "add an elapsed_ms column", "toggle")

# folder chooser
y += 26
choose = button(X, y + 1)
dialog = obj("opendialog fold", X + 28, y, 110, inlets=2, outlets=2, outlettype=["", "bang"])
pre_folder = obj("prepend folder", X + 28, y + 28, 100)
connect(choose, dialog)
connect(dialog, pre_folder)
connect(pre_folder, recorder)
comment("choose the folder (this help uses ~/Documents;\nunset, files go next to the patcher)", X + 190, y + 1, 300)
y += 28
control("clear", "unset the folder (next to the patcher,\nor ~/Documents if unsaved)")

# --- output --------------------------------------------------------------------
route = obj("route recording file rows error", 20, 400, 220, inlets=1, outlets=5)
s_record = obj("s dr.help.rec", 20, 430, 110, outlets=0)
connect(recorder, route)
connect(route, s_record, 0)
for i, label in enumerate(["file", "rows", "error"], start=1):
    p = obj("prepend set", 150, 430 + (i - 1) * 50, 80)
    m = box("message", (240, 430 + (i - 1) * 50, 620, 22), "", 2, 1, [""])
    connect(route, p, i)
    connect(p, m)
comment("outlet: recording 0/1, file <path> on start,\nrows <n> on stop, error <text>", 20, 580, 320)

patcher = {
    "patcher": {
        "fileversion": 1,
        "appversion": {"major": 9, "minor": 1, "revision": 0, "architecture": "x64", "modernui": 1},
        "classnamespace": "box",
        "rect": [100.0, 80.0, 900.0, 660.0],
        "gridsize": [15.0, 15.0],
        "boxes": boxes,
        "lines": lines,
        "dependency_cache": [],
        "autosave": 0,
    }
}

OUT.parent.mkdir(parents=True, exist_ok=True)
OUT.write_text(json.dumps(patcher, indent="\t", ensure_ascii=False) + "\n")
print(f"wrote {OUT}")
