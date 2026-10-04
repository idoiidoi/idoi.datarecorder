{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 9,
			"minor": 1,
			"revision": 0,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [
			100.0,
			80.0,
			900.0,
			660.0
		],
		"gridsize": [
			15.0,
			15.0
		],
		"boxes": [
			{
				"box": {
					"id": "obj-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						20.0,
						12.0,
						300.0,
						32.0
					],
					"text": "idoi.datarecorder",
					"fontsize": 22.0,
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "obj-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						20.0,
						44.0,
						460.0,
						20.0
					],
					"text": "Record lists to timestamped CSV files (v8ui, Max 9+)"
				}
			},
			{
				"box": {
					"id": "obj-3",
					"maxclass": "v8ui",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						20.0,
						330.0,
						330.0,
						56.0
					],
					"outlettype": [
						""
					],
					"filename": "idoi.datarecorder.js",
					"parameter_enable": 0,
					"border": 0,
					"embedstate": [
						[
							"folder",
							"~/Documents"
						]
					]
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						360.0,
						348.0,
						200.0,
						20.0
					],
					"text": "click to start / stop"
				}
			},
			{
				"box": {
					"id": "obj-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						20.0,
						76.0,
						260.0,
						20.0
					],
					"text": "demo data: 2 channels at 20 Hz"
				}
			},
			{
				"box": {
					"id": "obj-6",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						20.0,
						100.0,
						20.0,
						20.0
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "obj-7",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						50.0,
						100.0,
						84.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "loadmess 1"
				}
			},
			{
				"box": {
					"id": "obj-8",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						20.0,
						128.0,
						70.0,
						22.0
					],
					"outlettype": [
						"bang"
					],
					"text": "metro 50"
				}
			},
			{
				"box": {
					"id": "obj-9",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						20.0,
						156.0,
						49.0,
						22.0
					],
					"outlettype": [
						"bang",
						"bang"
					],
					"text": "t b b"
				}
			},
			{
				"box": {
					"id": "obj-10",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 4,
					"patching_rect": [
						20.0,
						186.0,
						63.0,
						22.0
					],
					"outlettype": [
						"int",
						"",
						"",
						"int"
					],
					"text": "counter"
				}
			},
			{
				"box": {
					"id": "obj-11",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						20.0,
						214.0,
						154.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "expr sin($i1 * 0.05)"
				}
			},
			{
				"box": {
					"id": "obj-12",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						160.0,
						186.0,
						91.0,
						22.0
					],
					"outlettype": [
						"int"
					],
					"text": "random 1000"
				}
			},
			{
				"box": {
					"id": "obj-13",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						160.0,
						214.0,
						63.0,
						22.0
					],
					"outlettype": [
						"float"
					],
					"text": "/ 1000."
				}
			},
			{
				"box": {
					"id": "obj-14",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						20.0,
						250.0,
						84.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "pack 0. 0."
				}
			},
			{
				"box": {
					"id": "obj-15",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						100.0,
						250.0,
						260.0,
						40.0
					],
					"text": "Each list, number or message that arrives\nwhile recording becomes one row."
				}
			},
			{
				"box": {
					"id": "obj-16",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						400.0,
						76.0,
						200.0,
						20.0
					],
					"text": "messages / attributes",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "obj-17",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						400.0,
						103.0,
						20.0,
						20.0
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "obj-18",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						428.0,
						102.0,
						77.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "record $1"
				}
			},
			{
				"box": {
					"id": "obj-19",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						590.0,
						103.0,
						280.0,
						20.0
					],
					"text": "start / stop (no argument toggles)"
				}
			},
			{
				"box": {
					"id": "obj-20",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						160.0,
						102.0,
						110.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "r dr.help.rec"
				}
			},
			{
				"box": {
					"id": "obj-21",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						280.0,
						102.0,
						80.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "prepend set"
				}
			},
			{
				"box": {
					"id": "obj-22",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						400.0,
						128.0,
						98.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "marker take1"
				}
			},
			{
				"box": {
					"id": "obj-23",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						590.0,
						129.0,
						280.0,
						20.0
					],
					"text": "any message is recorded with its name first"
				}
			},
			{
				"box": {
					"id": "obj-24",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						400.0,
						154.0,
						98.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "prefix take_"
				}
			},
			{
				"box": {
					"id": "obj-25",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						590.0,
						155.0,
						280.0,
						20.0
					],
					"text": "file name prefix: take_20261004_231500.csv"
				}
			},
			{
				"box": {
					"id": "obj-26",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						400.0,
						180.0,
						140.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "columns sine noise"
				}
			},
			{
				"box": {
					"id": "obj-27",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						590.0,
						181.0,
						280.0,
						20.0
					],
					"text": "header names (missing ones become ch<N>)"
				}
			},
			{
				"box": {
					"id": "obj-28",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						400.0,
						207.0,
						20.0,
						20.0
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "obj-29",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						428.0,
						206.0,
						77.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "header $1"
				}
			},
			{
				"box": {
					"id": "obj-30",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						590.0,
						207.0,
						280.0,
						20.0
					],
					"text": "write a header row"
				}
			},
			{
				"box": {
					"id": "obj-31",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						400.0,
						233.0,
						20.0,
						20.0
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "obj-32",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						428.0,
						232.0,
						84.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "elapsed $1"
				}
			},
			{
				"box": {
					"id": "obj-33",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						590.0,
						233.0,
						280.0,
						20.0
					],
					"text": "add an elapsed_ms column"
				}
			},
			{
				"box": {
					"id": "obj-34",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						400.0,
						259.0,
						20.0,
						20.0
					],
					"outlettype": [
						"bang"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "obj-35",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"patching_rect": [
						428.0,
						258.0,
						110.0,
						22.0
					],
					"outlettype": [
						"",
						"bang"
					],
					"text": "opendialog fold"
				}
			},
			{
				"box": {
					"id": "obj-36",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						428.0,
						286.0,
						100.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "prepend folder"
				}
			},
			{
				"box": {
					"id": "obj-37",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						590.0,
						259.0,
						300.0,
						40.0
					],
					"text": "choose the folder (this help uses ~/Documents;\nunset, files go next to the patcher)"
				}
			},
			{
				"box": {
					"id": "obj-38",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						400.0,
						312.0,
						49.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "clear"
				}
			},
			{
				"box": {
					"id": "obj-39",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						590.0,
						313.0,
						280.0,
						40.0
					],
					"text": "unset the folder (next to the patcher,\nor ~/Documents if unsaved)"
				}
			},
			{
				"box": {
					"id": "obj-40",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 5,
					"patching_rect": [
						20.0,
						400.0,
						220.0,
						22.0
					],
					"outlettype": [
						"",
						"",
						"",
						"",
						""
					],
					"text": "route recording file rows error"
				}
			},
			{
				"box": {
					"id": "obj-41",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						20.0,
						430.0,
						110.0,
						22.0
					],
					"text": "s dr.help.rec"
				}
			},
			{
				"box": {
					"id": "obj-42",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						150.0,
						430.0,
						80.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "prepend set"
				}
			},
			{
				"box": {
					"id": "obj-43",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						240.0,
						430.0,
						620.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": ""
				}
			},
			{
				"box": {
					"id": "obj-44",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						150.0,
						480.0,
						80.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "prepend set"
				}
			},
			{
				"box": {
					"id": "obj-45",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						240.0,
						480.0,
						620.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": ""
				}
			},
			{
				"box": {
					"id": "obj-46",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						150.0,
						530.0,
						80.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "prepend set"
				}
			},
			{
				"box": {
					"id": "obj-47",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						240.0,
						530.0,
						620.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": ""
				}
			},
			{
				"box": {
					"id": "obj-48",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						20.0,
						580.0,
						320.0,
						40.0
					],
					"text": "outlet: recording 0/1, file <path> on start,\nrows <n> on stop, error <text>"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"source": [
						"obj-7",
						0
					],
					"destination": [
						"obj-6",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-6",
						0
					],
					"destination": [
						"obj-8",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-8",
						0
					],
					"destination": [
						"obj-9",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-9",
						1
					],
					"destination": [
						"obj-12",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-9",
						0
					],
					"destination": [
						"obj-10",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-10",
						0
					],
					"destination": [
						"obj-11",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-12",
						0
					],
					"destination": [
						"obj-13",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-11",
						0
					],
					"destination": [
						"obj-14",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-13",
						0
					],
					"destination": [
						"obj-14",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-14",
						0
					],
					"destination": [
						"obj-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-17",
						0
					],
					"destination": [
						"obj-18",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-18",
						0
					],
					"destination": [
						"obj-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-20",
						0
					],
					"destination": [
						"obj-21",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-21",
						0
					],
					"destination": [
						"obj-17",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-22",
						0
					],
					"destination": [
						"obj-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-24",
						0
					],
					"destination": [
						"obj-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-26",
						0
					],
					"destination": [
						"obj-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-28",
						0
					],
					"destination": [
						"obj-29",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-29",
						0
					],
					"destination": [
						"obj-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-31",
						0
					],
					"destination": [
						"obj-32",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-32",
						0
					],
					"destination": [
						"obj-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-34",
						0
					],
					"destination": [
						"obj-35",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-35",
						0
					],
					"destination": [
						"obj-36",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-36",
						0
					],
					"destination": [
						"obj-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-38",
						0
					],
					"destination": [
						"obj-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-3",
						0
					],
					"destination": [
						"obj-40",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-40",
						0
					],
					"destination": [
						"obj-41",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-40",
						1
					],
					"destination": [
						"obj-42",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-42",
						0
					],
					"destination": [
						"obj-43",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-40",
						2
					],
					"destination": [
						"obj-44",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-44",
						0
					],
					"destination": [
						"obj-45",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-40",
						3
					],
					"destination": [
						"obj-46",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-46",
						0
					],
					"destination": [
						"obj-47",
						0
					]
				}
			}
		],
		"dependency_cache": [],
		"autosave": 0
	}
}
