# Mitsuki: Bruteforce Tool for SSH, FTP, MySQL/mariaDB

Mitsuki is a Python script designed for brute-forcing SSH, FTP, and MySQL/mariaDB services. It utilizes multithreading to efficiently try multiple passwords from a specified wordlist against a target server.

## Features

- Supports SSH, FTP, and MySQL/mariaDB protocols.
- Multithreaded execution for faster password testing.
- Automatic connection initiation upon finding valid credentials.
- Logs all brute-force attempts and results to `bruteforce.log`.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/veilwr4ith/Mitsuki
   ```

2. Make the installer executable:
   ```bash
   chmod +x installer.sh
   ```

3. Download the requirements:
  ```bash
  sudo ./installer.sh
  ```

## Usage

```bash
python3 mitsuki.py <hostname> -P <password_file> -u <username> -t <num_threads> -prc <protocol>
```

## Warning

    - Never use this tool for illegal purposes. The author assumes no liability for misuse.
    - Ensure you have permission to test against the target server.

## License

    - This project is licensed under the MIT License - see the LICENSE file for details.

