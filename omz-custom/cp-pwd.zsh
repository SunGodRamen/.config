cp-pwd () {
    # Expand the file name to its full path
    file=$(realpath "$1")

    # Detect the operating system
    if [[ "$(uname)" == "Darwin" ]]; then
        # macOS
        echo "$file" | pbcopy
        echo "File path copied to clipboard on macOS"
    elif [[ "$(uname)" == "Linux" ]] && [[ "$(uname -o)" == "Android" ]]; then
        # Termux on Android
        echo "$file" | termux-clipboard-set
        echo "File path copied to clipboard on Termux"
    else
        echo "Unsupported operating system"
    fi
}

