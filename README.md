# Frontend Setup for MacOS

## Beginner's guide

If you're a beginner to setup, I wrote a Medium article with an intro to the shell, the basic utilities and config files involved in the frontend setup process. Check that out first and then come back to this README for a walk through of my minimalist dotfiles repo which will hopefully help you learn to build your own.

👉 [Medium article | Beginner’s Frontend Setup Guide](https://medium.com/@alizeh.khan/minimalist-frontend-setup-for-macos-caae2b667ab9)


## Files explained

### `install.sh`
`aliases.sh`
`clone.sh`

### `Brewfile`

### `gitconfig`

### `.zshrc`

## Setup
Fork and clone this repo into your home directory.

```shell
$ cd ~ && gh repo fork alizehkhan/dotfiles --clone
```
Note: to do this via the command line, you would need the Github CLI tool which can either install using Homebrew or manually via [their docs site](https://cli.github.com/). But you can also fork and clone this repo manually if you want.

**Run the scripts in `install.sh`**
```shell
$ source ~/dotfiles/install.sh
```

Grab a cuppa tea ☕️ and wait for the scripts to finish running ✅.

## Personal macOS preferences

- Link Apple ID
- Menu bar: show Sound, Bluetooth, Battery percentage
- Touch bar: shows `Expanded Control Strip` and customise: `Screen Lock`, `Keyboard Brightness`, `Brightness`, `Media`, `Volume`
- Dock: Automatically hide and show
- Trackpad: Uncheck Scroll direction: Natural
- Keyboard: Key repeat (fast) / Delay until repeat (short)
- Accessibility: Use scroll gesture with control key to zoom
- Finder preferences:
- iTerm preferences
```js
  {
    theme: 'Minimal',
    background: '#20252C',
    font: 'Menlo',
    fontSize: '14px',
  }
```
