# Minimalist Frontend Setup

## Code Setup

**Install Xcode Command Line Tools 🛠**
```
xcode-select --install
```

**Install Homebrew 🍺**
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**Run your brewfile 🏃**
To install all your GUI and CLI apps
```
brew bundle
```

**Install Oh My Zsh 🪄**
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install custom Oh My Zsh plugins
```
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting
```

## Macbook Settings
- Link Apple ID
- Menu bar: show Sound, Bluetooth, Battery percentage
- Touch bar: shows `Expanded Control Strip` and customise: `Screen Lock`, `Keyboard Brightness`, `Brightness`, `Media`, `Volume`
- Dock: Automatically hide and show
- Trackpad: Uncheck Scroll direction: Natural
- Finder preferences:
- iTerm preferences
```
  { 
    theme: 'Minimal',
    background: '#20252C',
    font: 'Menlo',
    fontSize: '14px',
  }
  ```
- Keyboard: Key repeat (fast) / Delay until repeat (short)
- Accessibility: Use scroll gesture with command key to zoom
