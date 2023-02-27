huawei-efi-updater
==================

Allows updating UEFI firmware without HUAWEI PC Manager or Windows.

#### Updating firmware with Linux

1. Copy the UEFI capsule file to the InsydeH2O specific location (`/boot/efi/EFI/UpdateCapsule/CapsuleUpdateFile0000.bin`).
2. Set `OsIndications` variable to firmware update mode:

    ```sh
    printf "\x07\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00" \
      > /sys/firmware/efi/efivars/OsIndications-8be4df61-93ca-11d2-aa0d-00e098032b8c
    ```

3. Reboot

#### Updating firmware without OS

1. Create a FAT32 formatted USB flash drive.
2. Copy `EFI` directory for the correct model to the USB drive root.
3. Disable UEFI Secure Boot in BIOS settings.
4. Boot from the USB flash drive.
5. Wait for timeout to expire for startup.nsh to run.
6. The system will reboot to install the update.
7. Enable UEFI Secure Boot in BIOS settings.

#### Generating capsule

UEFI firmware update can be found on [Microsoft Update](https://www.catalog.update.microsoft.com/Search.aspx?q=HUAWEI). It needs to be prepended with a standard 28-byte capsule header (`EFI_CAPSULE_HEADER`).

- `CapsuleGuid` — from ESRT `FirmwareClass` (see `/sys/firmware/efi/esrt/entries` on Linux):
    - `1` for UEFI firmware
    - `2` for ME firmware
- `HeaderSize` — 28 bytes.
- `Flags` — `CAPSULE_FLAGS_PERSIST_ACROSS_RESET` (`0x10000`).
- `CapsuleImageSize` — firmware size + 28 bytes.
