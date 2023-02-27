huawei-efi-updater
==================

Allows updating UEFI firmware without HUAWEI PC Manager or Windows.

1. Create a FAT32 formatted USB flash drive.
2. Copy `EFI` directory for the correct model to the USB drive root.
3. Disable UEFI Secure Boot in BIOS settings.
4. Boot from the USB flash drive.
5. Wait for timeout to expire for startup.nsh to run.
6. The system will reboot to install the update.
7. Enable UEFI Secure Boot in BIOS settings.

UEFI firmware update can be found on [Microsoft Update](https://www.catalog.update.microsoft.com/Search.aspx?q=HUAWEI).
