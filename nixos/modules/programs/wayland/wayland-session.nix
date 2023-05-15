{ lib, ... }: with lib; {

    security = {
      polkit.enable = true;
      pam.services.swaylock = {};
    };

    hardware.opengl.enable = mkDefault true;

    fonts.enableDefaultFonts = mkDefault true;

    programs = {
      dconf.enable = mkDefault true;
      xwayland.enable = mkDefault true;
    };


    xdg.portal = {
      enable = mkDefault true;

      extraPortals = [
        # For screen sharing
        pkgs.xdg-desktop-portal-wlr
      ];
    };
}
