#!/bin/bash

# Prompt the user to enter the YouTube URL
read -p "Enter the YouTube URL: " youtube_url

# Prompt the user to enter the directory path
read -p "Enter the directory to save the output file: " directory

# Prompt the user to enter the output file name
read -p "Enter the output file name: " output_filename

# Add ".mp4" extension to the output filename if not provided
output_filename="${output_filename%.mp4}.mp4"

# Create the directory if it doesn't exist
mkdir -p "$directory"

# Download the video using yt-dlp
yt-dlp -o "$directory/input.webm" --restrict-filenames "$youtube_url"

# Convert the downloaded video to MP4 using ffmpeg
ffmpeg -i "$directory/input.webm" -crf 17 -c:v libx264 "$directory/$output_filename"

# Remove the input file
rm -rf "$directory/input.webm"

echo "Process completed successfully."

