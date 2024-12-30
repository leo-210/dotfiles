{ config, pkgs, inputs, ... }:

{
  /*programs.alacritty = {
    enable = true;
    settings = {
      env.TERM = "alacritty";
      window = {
	class = {
          instance = "Alacritty";
	  general = "Alacritty";
	};
      };
      font = {
        normal = {
          family = "FiraCode Nerd Font Mono";
	  style = "regular";
	};
        bold = {
          family = "FiraCode Nerd Font Mono";
	  style = "regular";
	};
        italic = {
          family = "FiraCode Nerd Font Mono";
	  style = "regular";
	};
        bold_italic = {
          family = "FiraCode Nerd Font Mono";
	  style = "regular";
	};
        size = 11.00;
      };
      terminal.shell.program = "fish";
    };
  };*/

  home.packages = with pkgs; [ alacritty ];
}
