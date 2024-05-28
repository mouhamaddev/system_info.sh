# Simple System Monitoring Script

## Overview
This is a simple Bash script designed to monitor basic system metrics, including CPU usage, memory usage, disk usage, and internet speed. The script checks for the required tools (`sysstat` and `speedtest-cli`), installs them if they are not already present, and then retrieves and displays the system metrics.

## Prerequisites
- `sysstat` (provides `mpstat`)
- `speedtest-cli`

The script will automatically install these if they are not found on your system.

## Usage

1. Make the script executable:
    ```sh
    chmod +x system_info.sh
    ```

2. Run the script:
    ```sh
    ./system_info.sh
    ```

## Script Output
The script will output the following metrics:

- **CPU Usage**: Displays user, system, and idle percentages.
- **Memory Usage**: Shows total, used, and free memory.
- **Disk Usage**: Provides total, used, and available disk space for the root filesystem.
- **Internet Speed**: Measures and displays download and upload speeds.

## Example Output
```sh
CPU Usage:
User: 2.0%, System: 1.0%, Idle: 97.0%

Memory Usage:
Total: 8.0G, Used: 3.2G, Free: 4.5G

Disk Usage:
Total: 50G, Used: 20G, Available: 27G

Internet Speed:
Download: 372.00 Mbit/s
Upload: 289.00 Mbit/s
```
