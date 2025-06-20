**Video Transcoding Script**
**Overview**

This shell script transcodes all .mp4 files in the current directory into .mov format using FFmpeg with MJPEG video and PCM audio codecs. 
It creates a transcoded directory to store the output files and skips any files that have already been transcoded to avoid redundant processing.
**Prerequisites**
**FFmpeg:** Ensure FFmpeg is installed on your system. You can install it via:


Ubuntu/Debian: sudo apt-get install ffmpeg

macOS (with Homebrew): brew install ffmpeg

Windows: Download from FFmpeg's official site and add to your PATH.

A Unix-like environment (Linux, macOS, or WSL on Windows) to run the shell script.

**Script Details**
The script:
Creates a transcoded directory if it doesn't exist.

Loops through all .mp4 files in the current directory.

Checks if a transcoded .mov file already exists in the transcoded directory.

If the output file doesn't exist, it converts the .mp4 file to .mov using:
Video codec: MJPEG (-vcodec mjpeg -q:v 2)

Audio codec: PCM signed 16-bit big-endian (-acodec pcm_s16be -q:a 0)

Output format: MOV (-f mov)

If the output file exists, it skips the file and prints a message.

**Usage**
Make the script executable:

~: chmod +x transcode.sh

Run the script:

./transcode.sh

**Output**
Transcoded .mov files are saved in the transcoded directory.

If a file has already been transcoded, the script will skip it and display a message like:
 _Skipping example.mp4: transcoded/example.mov already exists_

** Notes**
Ensure you have enough disk space, as transcoded files (especially with MJPEG and PCM) can be large.

The script only processes .mp4 files. To support other formats, modify the *.mp4 pattern in the script.

If FFmpeg encounters errors (e.g., corrupted input files), they will be displayed in the terminal.

**Troubleshooting**

- FFmpeg not found: Verify FFmpeg is installed and accessible in your PATH (ffmpeg -version).

- Permission denied: Ensure the script is executable (chmod +x transcode.sh) and you have write permissions in the directory.

- No .mp4 files found: Confirm there are .mp4 files in the current directory.

**License**
This script is provided as-is under the MIT License (LICENSE). Feel free to modify and distribute as needed.





