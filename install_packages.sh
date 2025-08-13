sudo pacman -Suy

packages=" \
  sudo \
  hyprland \
  base-devel \
  brightnessctl \
  pipewire \
  wireplumber \
  kitty \
  nvim \
  htop \
  unzip \
  hyprlock \
  chromium \
  git \
  wget \
  pipewire-alsa \
  nvidia \
  nvidia-utils \
  lynx \
  ripgrep \
  github-cli \
  code"

sudo pacman -S echo $packages
