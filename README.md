# wma_to_mp3_converter
Shell script program to recursively convert wma files to mp3 in all subdirectories using ffmpeg. I made this because there were no free tools for this type of recursive bulk conversion.

# Install ffmpeg
To install ffmpeg, you can follow the steps below depending on your operating system:

## For Windows:

1. Go to the official website of ffmpeg: https://ffmpeg.org/download.html.
2. Scroll down to the "Windows" section and click on the "Windows Builds" link.
3. Select the "Static" build option and then choose your operating system version (32-bit or 64-bit).
4. Download the ZIP file and extract it to a folder of your choice.
5. Add the extracted folder to your system's PATH environment variable to access the ffmpeg executable from anywhere in the command prompt.

## For Mac OS:

Open the Terminal app.
1. Install Homebrew if you haven't already by running the following command: /bin/bash -c "$(curl -fsSL 
2. https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
3. Install ffmpeg by running the following command: brew install ffmpeg

## For Linux:

1. Open the Terminal app.
2. Run the following command to install ffmpeg: sudo apt-get install ffmpeg
3. Alternatively, you can also download the source code from the official website and compile it yourself, but this requires more advanced knowledge and is not recommended for beginners.

# Place ```convert.sh``` into directory of folder you want recursive convert and navigate to that directory.

# Run the following commands:

## Make the script executable by running: 
```chmod +x convert.sh```

## Run command to recursively make copies of each wma file in mp3 format.
```./convert.sh```
