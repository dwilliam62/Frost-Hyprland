{ inputs, pkgs, ... }: 
let 
  _2048 = pkgs.callPackage ../../pkgs/2048/default.nix {}; 
in
{
  home.packages = (with pkgs; [
    _2048

    ## CLI utility
    ani-cli
    binsider
    bitwise                           # cli tool for bit / hex manipulation
    bottom
    caligula                          # User-friendly, lightweight TUI for disk imaging
    cava
    dconf-editor
    docfd                             # TUI multiline fuzzy document finder
    duf
    eza                               # ls replacement
    entr                              # perform action when file change
    fd                                # find replacement
    ffmpeg
    file                              # Show file information 
    gtt                               # google translate TUI
    gifsicle                          # gif utility
    gtrash                            # rm replacement, put deleted files in system trash
    hexdump
    hyfetch
    pfetch
    bat
    htop
    inxi
    btop
    glances
    ncdu 
    iotop
    ipfetch
    microfetch
    neofetch
    ncftp
    ouch
    yazi
    pfetch
    stacer
    mission-center
    imv                               # image viewer
    jq                                # JSON processor
    killall
    libnotify
    lsd
    luarocks
    gcc
    gnumake
    cargo 
    man-pages                         # extra man pages
    mimeo
    mpv                               # video player
    ncdu                              # disk space
    nitch                             # systhem fetch util
    nixd                              # nix lsp
    nixfmt-rfc-style                  # nix formatter
    openssl
    onefetch                          # fetch utility for git repo
    pamixer                           # pulseaudio command line mixer
    playerctl                         # controller for media players
    poweralertd
    programmer-calculator
    ripgrep                           # grep replacement
    shfmt                             # bash formatter
    swappy                            # snapshot editing tool
    tdf                               # cli pdf viewer
    treefmt2                          # project formatter
    tldr
    tmux
    lunarvim
    todo                              # cli todo list
    toipe                             # typing test in the terminal
    ttyper                            # cli typing test
    ugrep
    unzip
    valgrind                          # c memory analyzer
    vivaldi                           # browser
    wl-clipboard                      # clipboard utils for wayland (wl-copy, wl-paste)
    wget
    woomer
    yt-dlp-light
    xdg-utils
    xxd
    zellij
    zoxide
    nomacs
    waypaper
    pyprland

    ## CLI 
    cbonsai                           # terminal screensaver
    cmatrix
    pipes                             # terminal screensaver
    sl
    tty-clock                         # cli clock
    figlet

    ## GUI Apps
    audacity
    bleachbit                         # cache cleaner
    gimp
        #libreoffice
    nix-prefetch-github
        #obs-studio
    pavucontrol                       # pulseaudio volume controle (GUI)
    pitivi                            # video editing
    gnome-calculator                  # calculator
    resources                         # GUI resources monitor
    soundwireserver
        #thunderbird
    vlc
    winetricks
    wineWowPackages.wayland
    zenity

    # C / C++
    gcc
    gdb
    gnumake

    # Python
    python3
    python312Packages.ipython

    inputs.alejandra.defaultPackage.${system}
  ]);
}
