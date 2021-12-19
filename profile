case $(uname) in
  Linux)
    # needs to be in .profile to load the theme correctly on manjaro
    export QT_QPA_PLATFORMTHEME="qt5ct"
    export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

    export BROWSER=/usr/bin/firefox

    # Shader caching is a strategy to reduce stuttering and improve overall performance by ‘prebaking’ some of the work your GPU has to do before it has to do so in-game.
    __GL_THREADED_OPTIMIZATION=1 #for OpenGL games
    __GL_SHADER_DISK_CACHE=1 #to create a shader cache for a game
    __GL_SHADER_DISK_CACHE_PATH=/home/torgeir/Games/shader-cache # to set the location for the shader cache.

    # https://github.com/Kron4ek/Wine-Builds/releases
    if [ -d "$HOME/.local/share/wine-6.21-staging-tkg-amd64/bin" ] ; then
      export PATH="$HOME/.local/share/wine-6.21-staging-tkg-amd64/bin:$PATH"
    fi

    export WINEFSYNC=1

    # To enable compatibility with high-resolution displays, set the following environment variables accordingly:
    # https://wiki.archlinux.org/title/DaVinci_Resolve
    export QT_DEVICE_PIXEL_RATIO=1
    export QT_AUTO_SCREEN_SCALE_FACTOR=true

    ;;
esac