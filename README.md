# Code-Translator

This project is a code translator using Flex (win_flex) and Bison (win_bison) for lexical and syntax analysis, and GCC for compilation. It is designed to run on Windows.

## Prerequisites
Install the following tools and ensure they are added to your system PATH:

- [win_flex](https://github.com/lexxmark/winflexbison) (download and extract)
- [win_bison](https://github.com/lexxmark/winflexbison) (download and extract)
- [GCC for Windows (TDM-GCC)](https://jmeubank.github.io/tdm-gcc/) (install)
- (Optional) [make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm) if you want to use the makefile

## How to Build and Run
Open PowerShell in the project directory and run these commands one by one:

```powershell
# Generate the lexer
win_flex l.l

# Generate the parser
your_path_to_win_bison\win_bison.exe y.y -d --debug --verbose

# Compile everything
gcc lex.yy.c y.tab.c -o trans -g -w
```

Or, if you have make installed:

```powershell
make -f makefile
```

## How to Run the Translator

```powershell
./trans.exe
```

---