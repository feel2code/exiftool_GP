# exiftool_GP

Simple scripts for merging JSON metadata to pictures and videos after export from Google Photos.

## Description

This repository provides convenient shell scripts for merging JSON metadata to files exported from Google Photos.

### Features

- `exif_merge_json_to_file.sh`: A script for merging JSON metadata to files.

### Dependencies

You will need to be sure that `exiftool` is already installed on your OS.

## How to

1. **Navigate to the Folder**: Enter the extracted photos folder.

    ```bash
    cd <folder with extracted Google photos>
    ```

2. **Clone the Repository**: Clone this repository.
   
   ```bash
   git clone https://github.com/feel2code/exiftool_GP.git
   ```

3. **Set Permissions**: Make the shell scripts executable.

    ```bash
    chmod +x *.sh
    ```

4. **Run the Script**: Execute the script to merge JSON metadata to the files.

    ```bash
    ./exif_merge_json_to_file.sh
    ```

## This project is licensed under the MIT License.

