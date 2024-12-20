# Fun File Organizer

## Description
**Fun File Organizer** is a Bash script that organizes files in a specified directory by their file types. It groups files into categorized subfolders based on their extensions, making your file system cleaner and more organized.

## Features
- Automatically detects and categorizes files into predefined folders such as Documents, Images, Music, Videos, Archives, and Scripts.
- Creates subfolders dynamically if they don’t already exist.
- Moves uncategorized files into an "Others" folder.
- Easy to use with minimal input from the user.

## How It Works
The script:
1. Prompts the user to specify the directory to organize (defaults to the current directory if left blank).
2. Scans files and categorizes them based on their extensions.
3. Moves files into subfolders named after their categories.

## File Categories
- **Documents**: `doc`, `docx`, `pdf`, `txt`
- **Images**: `jpg`, `png`, `gif`, `jpeg`, `bmp`
- **Music**: `mp3`, `wav`, `flac`
- **Videos**: `mp4`, `mkv`, `avi`
- **Archives**: `zip`, `rar`, `tar.gz`, `7z`
- **Scripts**: `sh`, `py`, `js`
- **Others**: Uncategorized files

## Installation
1. Download the script and save it as `fun_file_organizer.sh`.
2. Make the script executable:
   ```bash
   chmod +x fun_file_organizer.sh
   ```

## Usage
1. Run the script:
   ```bash
   ./fun_file_organizer.sh
   ```
2. Enter the directory path you want to organize. Press Enter to use the current directory.
3. The script will create categorized folders and move files accordingly.

## Example
Before running the script:
```
Documents: file1.doc, file2.pdf
Images: image1.jpg, image2.png
Others: randomfile.xyz
```

After running the script:
```
Documents/
  - file1.doc
  - file2.pdf
Images/
  - image1.jpg
  - image2.png
Others/
  - randomfile.xyz
```

## Notes
- Ensure you have the necessary permissions to modify the target directory.
- Be cautious while running the script, as it moves files to subfolders.

## License
This script is open-source and free to use, modify, and distribute.

---

Enjoy a cleaner, more organized directory structure with **Fun File Organizer**! 🚀

