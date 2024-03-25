welcome to h1ne's dotfiles

# **CURRENTLY INSTALL.SH HAS SOME PROBLEMS. DO NOT RUN UNTIL I FIX IT.**

# **I WILL FIX IT ASAP. THANK YOU.**

if you dont have .bash_aliases

Before running install.sh, you need to create .bash_aliases and write your alias settings there. then call it from bashrc with following

```
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

if you are wsl user, i recommend to make .wsl-aliases inside of ~/dotfiles. you can create your own aliases which contain your windows username and paths. .bash_aliases for more information
