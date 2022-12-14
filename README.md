# Minimalist Frontend Setup for Mac

## .dotfiles
Dotfiles are configuration files for various programs in plain text format. Dotfiles are named that way because they start with a `.` On Unix based systems, dotfiles are hidden by the Operating System by default and are stored in your home directory `~` by default. You can run the command `ls -a` to list all hidden files and directories in the current directory.

## Zsh
Shells provide a way for us to communicate with the operating system. This can be via a command-line interface (CLI) or a graphical user interface (GUI). Apple replaced `bash` (bourne again shell) with `zsh` (z shell) as its default shell for macOS Catalina and onwards.

Zsh is built on top of bash so it has additional features such as plug-in support, better customisation, theme support, autocorrection, etc.

You can check which shell you're using with the following command:
```shell
$ which $SHELL
```
You should see the file path to your shell `/bin/zsh` printed out. Bin stands for “binary”, a directory of all executable commands for your apps.

## Xcode Command Line Tools
Out the box, a Mac doesn't come with all the software and tools needed for programming since most users don't need it. Instead, Apple makes this available to install separately. Xcode is their integrated development environment used to develop software for macOS, iOS, iPadOS, watchOS, and tvOS.

Since we're not developing software for Apple devices as frontend engineers, we don't need the whole package which is 40GB+. Fortunately, Apple provides a separate and much smaller download, the Xcode Command Line Tools. This installs the [most-needed utilities](https://mac.install.guide/commandlinetools/8.html) for software development like git.

The easiest way to install Xcode Command Line Tools is by installing **Homebrew**, the "missing package manager for macOS".

## Homebrew
Homebrew allows you to install the stuff you need that Apple didn't (both CLI and GUI tools).

**Install Homebrew**
```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
If you haven't already installed XCode Command Line Tools, you'll see a message that "The XCode Command Line Tools will be installed." Press `return` to continue.

## Oh my zsh
Oh My Zsh is an open source, community-driven framework for managing your zsh configuration with several plugins and themes.

**Install Oh My Zsh**
```shell
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**Install custom Oh My Zsh plugins**
```shell
$ cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting
```

**Run your brewfile to install all your GUI and CLI apps**
```shell
$ brew bundle
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
