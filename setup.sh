#!/bin/bash

# Check if Homebrew is already installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install yt-dlp
echo "Installing yt-dlp..."
brew install yt-dlp

# Install ffmpeg
echo "Installing ffmpeg..."
brew install ffmpeg

echo "Installation completed successfully."

