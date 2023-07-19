{ inputs, lib, config, pkgs, ... }: {

  home.packages = with pkgs; [
      wezterm
    ];
  home.file = {
    ".config/wezterm/wezterm.lua".text = ''
    -- Pull in the wezterm API
    local wezterm = require 'wezterm'
    local config = {}

    -- In newer versions of wezterm, use the config_builder which will
    -- help provide clearer error messages
    if wezterm.config_builder then
      config = wezterm.config_builder()
    end

    config.color_scheme = 'Bamboo'
    config.hide_mouse_cursor_when_typing = false

    return config

    '';
  };
}
