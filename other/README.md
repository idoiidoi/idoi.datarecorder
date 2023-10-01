# idoi.datarecorder

## Description

This JSUI object for Max8 provides an interactive interface for recording data into CSV files. It offers a visual representation to indicate the recording status and a simple mechanism to start and stop the recording.

## Features

- **Interactive UI:** The JSUI displays a red circle when it's ready to record and turns into a green rectangle during the recording.
- **Timestamps:** Each data entry is prefixed with a UNIX timestamp.
- **Dynamic CSV Naming:** The generated CSV files are named based on the current date and time to ensure uniqueness.
- **External Control:** The JSUI responds to `1` for starting the recording, `0` for stopping, and also to a `clear` message to reset the folder selection.

## Usage

1. **Directory Selection:** Click on the JSUI object to select the directory where the CSV files will be saved.
2. **Start Recording:** Send a `1` to the JSUI object or click on it when it displays a red circle.
3. **Stop Recording:** Send a `0` to the JSUI object or click on it while it's recording (green rectangle is displayed).
4. **Reset Directory Selection:** Send a `clear` message to the JSUI object.

## Methods

- **`setFolderPath(path)`**: Manually set the folder path where the CSV files will be saved.

## Limitations

- The JSUI object requires a manual directory selection before starting the recording.
- The data is expected to be sent as a `list` to the JSUI object.

## Author

[Your Name Here]

## License

[Your License Here]