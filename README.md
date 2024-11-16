# Launching the `OverwatchExclusions.ps1` PowerShell Script

This guide provides step-by-step instructions on how to run the `OverwatchExclusions.ps1` script in an elevated PowerShell window, how to change the execution policy to unrestricted, and then how to revert it back to the original policy.

## Prerequisites

- Windows operating system
- PowerShell installed
- Git installed (if using Git to clone the repository)
- Administrator privileges

## Steps

1. **Download the Script**

   There are two ways to download the script:


  - **Download ZIP:**

     - From this page click on the green **Code** button at the top right corner.
     - Select **Download ZIP** from the dropdown menu.
     - Extract the ZIP file to your desired location.
       
   - **Using Git:**

     If you have Git installed, you can clone the repository by executing the following command in your terminal or PowerShell:

     ```shell
     git clone https://github.com/yourusername/yourrepository.git
     ```

     Replace `yourusername` and `yourrepository` with the appropriate GitHub username and repository name.
2. **Open an Elevated PowerShell Window**

   - Press `Win + X` to open the Power User Menu.
   - Select **Windows PowerShell (Admin)** or **Windows Terminal (Admin)**.
   - If prompted by User Account Control (UAC), click **Yes** to allow.

3. **Set Execution Policy to Unrestricted**

   - In the PowerShell window, execute the following command to change the execution policy:

     ```powershell
     Set-ExecutionPolicy -ExecutionPolicy Unrestricted
     ```

   - You may be prompted to confirm the change. Type `Y` and press `Enter`.

4. **Run the `OverwatchExclusions.ps1` Script**

   - Navigate to the directory where the `AddOverwatchExclusions.ps1` script is located. For example:

     ```powershell
     cd C:\Path\To\Script
     ```

   - Execute the script by running:

     ```powershell
     .\OverwatchExclusions.ps1
     ```

5. **Revert the Execution Policy to the Original**

   - After running the script, it is recommended to revert the execution policy to its original state. If you do not know the original policy, it's commonly set to **Restricted**. Execute the following command to revert:

     ```powershell
     Set-ExecutionPolicy -ExecutionPolicy Restricted
     ```

   - Again, you may be prompted to confirm the change. Type `Y` and press `Enter`.

## Additional Notes

- Make sure to verify the script's source and ensure it's safe before running it.
