{ pkgs, ... }: 

{
    programs.neovim = {
        enable = true;
        extraPackages = with pkgs; [
            # LSPs
            clang-tools
            lua-language-server
            nil
            tree-sitter
            luajit
            luajitPackages.jsregexp
            nodejs_23
        ];
    };
}
