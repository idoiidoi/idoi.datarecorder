

mgraphics.init();
autowatch = 1;
var recording = false;
var file;
var folderPath;

var initial_rect = this.box.rect;
var width = initial_rect[2] - initial_rect[0];
var height = initial_rect[3] - initial_rect[1];



function bang() {
    refresh();
}

function msg_int(value) {
    if (value === 1) {
        startRecording();
    } else if (value === 0) {
        stopRecording();
    }
    refresh();
}

function onresize(w, h) {
    width = w;
    height = h;
    refresh();
}
onresize.local = 1;



function clear() {
    folderPath = undefined;
    refresh();
}


function paint() {
    with (mgraphics) {
        clear_surface();

        var minDimension = 0.9*Math.min(width, height);
        

        if (!folderPath) {
            var text = "Select a directory";
            var textMetrics = mgraphics.text_measure(text);
            var textWidth = textMetrics[0];
            var textHeight = textMetrics[1];
            
            move_to((width - textWidth) / 2, (height + textHeight) / 2);
            text_path(text);
            fill();
        } else if (!recording) {
            // Recording waiting state: Full Red Circle
            set_source_rgba(1, 0.05, 0, 1);
            ellipse((width - minDimension) / 2, (height - minDimension) / 2, minDimension, minDimension);
            fill();
        } else {
            // Recording state: Full Black Rectangle
            set_source_rgba(0, 0.90, 0.4, 1);
            rectangle((width - minDimension) / 2, (height - minDimension) / 2, minDimension, minDimension);
            fill();
        }
    }
}




function padNumber(num) {
    return num < 10 ? "0" + num : "" + num;
}

function onclick(x, y, button, cmd, shift, capslock, option, ctrl) {
    if (!folderPath) {
        post("Select a directory first.\n");
        return;
    }

    if (!recording) {
        startRecording();
    } else {
        stopRecording();
    }
    refresh();
}

function list() {
    var args = arrayfromargs(arguments);
    
    if (recording && file && folderPath) {
        var timestamp = Math.floor((new Date()).getTime());
        var csvContent = timestamp + "," + args.join(",") + "\n";
        file.writestring(csvContent);
    }
}


function setFolderPath(path) {
    folderPath = path;
    refresh();
}


function startRecording() {
    if (!folderPath) {
        post("Please select a folder first using the 'savedialog'.\n");
        return;
    }

    var filename = generateFileName();
    var filepath = folderPath + "/" + filename;
    file = new File(filepath, "write", "");

    if (file.isopen) {
        recording = true;
        var timestamp = Math.floor((new Date()).getTime()); // UNIX timestamp in mseconds
        
        post("Recording started. Data will be saved to: " + filepath + "\n");
    } else {
        post("Failed to open file for writing.\n");
    }
}


function stopRecording() {
    if (file && file.isopen) {
        file.close();
    }
    recording = false;
    post("Recording stopped.\n");
}

function generateFileName() {
    var date = new Date();
    var year = date.getFullYear();
    var month = padNumber(date.getMonth() + 1);
    var day = padNumber(date.getDate());
    var hour = padNumber(date.getHours());
    var minute = padNumber(date.getMinutes());
    var second = padNumber(date.getSeconds());
    
    return year + month + day + "_" + hour + minute + second + ".csv";
}