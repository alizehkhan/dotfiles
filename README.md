# Frontend Setup for MacOS

## 📖 Beginner’s Frontend Setup Guide

👉 Check out my [Medium article](https://medium.com/@alizeh.khan/minimalist-frontend-setup-for-macos-caae2b667ab9)

## 🤖 Automated Frontend Setup
**Fork and clone this repo into your home directory.**
```shell
$ cd ~ && gh repo fork alizehkhan/dotfiles --clone
```
Note: to do this via the command line, you would need the Github CLI tool which can either install using Homebrew or manually via [their docs site](https://cli.github.com/). But you can also fork and clone this repo manually if you want.

**Run the scripts in `install.sh`**
```shell
$ source ~/dotfiles/install.sh
```

Grab a cuppa tea ☕️ and wait for the scripts to finish running ✅.

## 💻 My Personal Macbook Settings

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
