{ pkgs, ... }:
{
  programs.btop = {
    enable = true;

    settings = {
      color_theme = "HotPurpleTrafficLight";
      theme_background = false;
      update_ms = 500;
      rounded_corners = false;
      proc_tree = true;
    };
  };

  home.packages = (with pkgs; [ nvtopPackages.intel ]);
}
