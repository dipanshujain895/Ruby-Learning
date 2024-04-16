# Ruby-Learning

Welcome to Ruby Fundamentals! This repository serves as a comprehensive guide to mastering the core concepts of Ruby programming language. Each file contains code examples along with explanations, allowing you to grasp the concepts easily.

## Getting Started

To run any file, you simply need to use the following command:

```bash
ruby filename.rb
```

This command executes the file and provides the output.

## Prerequisites

Before getting started, ensure you have Ruby version 3.2 installed on your system. You can install it using your preferred package manager.

```bash
# Example installation using Homebrew on macOS
brew install ruby
```
If Ruby is pre installed, and version is different from what we need, you can use rbenv

```bash
# Example installation using Homebrew on macOS
brew install rbenv

# After that run these commands on your shell
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc

# Install ruby-build: This is a rbenv plugin that provides an "rbenv install" command
brew install ruby-build

#Install Ruby 3.2.2:
rbenv install 3.2.2

# Set global Ruby version:
rbenv global 3.2.2
```

Verify installation:

```bash
ruby -v

```
After installing Ruby, execute the following commands to install essential gems:

```bash
gem install solargraph    # Used for navigating between Ruby files in VS Code
gem install rubocop       # A Ruby static code analyzer and formatter
```

## VS Code Extensions

For a smoother development experience in VS Code, consider installing the following extensions:

- Ruby Solargraph
- Ruby Sorbet
- Ruby Language Colorization
- VSCode rdbg Ruby debugger
- Code Runner (for testing files with a single click)
- Material Icon Theme (for better icons)

## Usage

Feel free to copy and try out the code examples provided in each file. Experimenting with the code is an excellent way to reinforce your understanding of Ruby fundamentals.

## How to Start
To start learning, you can go ahead and start with `hello.rb`. This file contains a basic "Hello, World!" example to help you get acquainted with Ruby.

## Contributions

If you find any issues or have suggestions for improvement, contributions are always welcome! Please fork the repository, make your changes, and submit a pull request.

Happy coding!

