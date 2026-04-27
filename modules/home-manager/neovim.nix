{
  lib,
  pkgs,
  ...
}: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    extraConfig = lib.fileContents ./neovim/init.vim;
    plugins = with pkgs.vimPlugins; [
      vim-easy-align
      # 括号引号补全
      delimitMate
      # 注释
      vim-commentary
      vim-be-good
    ];

    coc = {
      enable = true;
      package = pkgs.vimPlugins.coc-nvim;

      #    extensions = [
      #      "coc-json"
      #      "coc-tsserver"
      #      "coc-pyright"
      #      "coc-css"
      #      "coc-snippets"
      #      "coc-sh"
      #      "coc-html"
      #      "coc-markdownlint"
      #    ];
    };
  };
}
