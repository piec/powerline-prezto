if [[ "$OSTYPE" = darwin* ]]; then
    which genv >/dev/null 2>&1 || {
        echo "genv (GNU env) missing"
        echo "  -> brew install coreutils"
        return 1
    }
fi
path+=(${0:h}/external/scripts)
export PYTHONPATH=$PYTHONPATH:${0:h}/external
source "${0:h}/external/powerline/bindings/zsh/powerline.zsh" || return 1
powerline-daemon
