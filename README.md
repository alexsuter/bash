# #!/bin/bash

next to daily dockering 🐋 I'm an automater using bash scripts 🎮

and don't execute!

    sudo rm -rf /


# Add env variable to bash

Best so far. Add it to `~/.bashrc` e.g.:

    export JAVA_HOME=/usr/lib/jvm/jdk-11.0.13+8

# Install .bash_aliases

Copy `.bash_aliases` to user home `~`.

# Install git color shell

Execute

    git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

And add this to `~/.bashrc`

    if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
        GIT_PROMPT_ONLY_IN_REPO=1
        source $HOME/.bash-git-prompt/gitprompt.sh
    fi
