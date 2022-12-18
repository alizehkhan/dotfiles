# 🚶 Guided Frontend Setup for MacOS

## ⚫️ Dotfiles
Dotfiles are configuration files for various programs in plain text format. They are called dotfiles because they start with a `.` 🧐. On Unix based systems, these are hidden by the operating system by default and are usually stored in your home directory `~`. To make these visible you can either press `cmd shift .` in finder or run the `ls -a` command.

## 🛠️ Xcode Command Line Tools
Out the box, a Mac doesn't come with all the software and tools needed for programming since most users don't need it. Instead, Apple makes this available to install separately. Xcode is their integrated development environment used to develop software for macOS, iOS, iPadOS, watchOS, and tvOS.

Since we're not developing software for Apple devices as frontend engineers, we don't need the whole package which is 40GB+. Fortunately, Apple provides a separate and much smaller download, the Xcode Command Line Tools. This installs the [most-needed utilities](https://mac.install.guide/commandlinetools/8.html) for software development like git.

### Install
```shell
$ xcode-select --install
```

## 🍺 Homebrew
Homebrew is a package manager which simplifies the installation of software on macOS (CLI utilities and applications)

### Install Homebrew
```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
If you haven't already installed XCode Command Line Tools, you'll see this prompt "The XCode Command Line Tools will be installed." Press `return` to continue.

#### Search
Don't know the keyword for the tool / app you want to install? You can use brew search 🔍. For example this command would list all tool/app keywords that contain the word google that you can install using brew.
```shell
$ brew search google
```

#### Install a CLI utility
```shell
$ brew install node
```
#### Install a GUI app using cask
```shell
$ brew install --cask figma
```
#### Install CLI utilities and GUI apps in bulk
Create a `Brewfile` in your home directory. List all the CLI utililty and GUI apps you need (check out the [Brewfile](Brewfile) in this repo as an example). Then using bundle, install all of the them using the command below:
```shell
$ brew bundle --file ~/Brewfile
```

## 🐚 Shell - Zsh
Shells provide a way for us to communicate with the operating system. It's called the "shell" because it's the outer layer separating you from the innermost parts of the operating system, called the kernel 🥜. Technically, your operating system's Graphical User Interface (GUI) is also a "shell," but the Command Line Interface (CLI) is frequently referred to casually as "the shell."

Apple replaced `bash` (Bourne again shell) with `zsh` (Z shell) as its default shell from macOS Catalina and onwards. Zsh is built on top of bash so it has additional features such as plug-in support, theme support, better customisation, etc.

You can check which shell you're using with the following command:
```shell
$ which $SHELL
```
This will print out the file path to your shell `/bin/zsh`. Bin stands for “binary”, a directory of all executable commands for your apps.

`.zsh_history` is a file in your home directory that stores a list of your previous terminal commands.

## 🪄 Oh My Zsh
Oh My Zsh is an open source, community-driven framework for managing your Zsh configuration. It comes with heaps of helpful plugins, themes, and functions.

### Install
```shell
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Configure
The `.zshrc` file in your home directory is where any custom configuration lives for zsh. It's run whenever you start the shell eg. by entering the `zsh` command or opening a new session in terminal. When you install Oh My Zsh, this file is populated with some default configuration. You can check out how I configured my [zshrc file here](zshrc).

### Plugins
The [preinstalled plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)🔌 it comes with is located in `~/.oh-my-zsh/plugins`. Custom plugins can also be installed in `~/.oh-my-zsh/custom/plugins`.

**Install custom Oh My Zsh plugins**
```shell
$ cd ~/.oh-my-zsh/custom/plugins
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting
```

To use a plugin add it to the plugins list in your `~/.zshrc` like so (these are the ones I use):

```shell
plugins=(
  git
  zsh-syntax-highlighting
  history-substring-search
  last-working-dir
  web-search
)
```
# 🤖 Automated Frontend Setup for MacOS
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

# 💻 Alizeh's Personal Macbook Settings

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
