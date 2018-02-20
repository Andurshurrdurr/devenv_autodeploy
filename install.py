import sys
import os
zshinstall = """
# Path to vizacontiki repo (update to reflect your setup)
vizapathprefix=%s

# Do not touch
source $vizapathprefix/vizacontiki/.bashrcviza
##################### END BLOCK ############################################
echo "zshrc init!"
alias ohmyzsh="mate ~/.oh-my-zsh"

# For ssh key
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

"""

def main(silent):
    "configures the variours dependencies"
    # First get the path for viza
    vizapath = ""
    if not silent:
        vizapath = input("Insert path to contiki repo > ")
    if vizapath == "":
        vizapath = "~/Documents/embedded"
    
    # First check if .zshrc has already been installed with vizaconfigs
    with open(os.getenv('HOME') + '/.zshrc', 'r') as f:
        for line in f:
            if "# Path to vizacontiki repo (update to reflect your setup)" in line:
                print(".zshrc has already been configured")
                return
    
    # If we made it this far we can write the configurations to the file
    with open("~/.zshrc", 'a') as f:
        zshappend = zshinstall % vizapath 
        f.write(zshappend)
        f.writeline("\n. %s/z/z.sh" % os.path.dirname(os.path.realpath(__file__)))


if __name__ == '__main__':
    if len(sys.argv) > 1:
        silent = True
    else:
        silent = False
    
    # Call main function with silent arg
    main(silent)
