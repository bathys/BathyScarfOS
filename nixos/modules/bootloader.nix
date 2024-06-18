{pkgs, ... }:
{
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelParams = [  ];
  boot.loader = {
   # systemd-boot.enable = true;
    timeout = 5;
    efi.efiSysMountPoint = "/boot";
    grub = {
      enable = true;
      efiSupport = true;
      efiInstallAsRemovable = true; #Otherwise /boot/EFI/BOOT/BOOTX64.EFI isn't generate.
      devices = [ "nodev" ];
      extraEntriesBeforeNixOS = false;
      extraEntries = ''
        menuentry "Reboot" {
          reboot
        }
        menuentry "Poweroff" {
          halt
        }
        '';
    };
  };
}
