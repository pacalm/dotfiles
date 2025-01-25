mise activate fish | source
zoxide init fish | source

fzf_configure_bindings --variables

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

function task_info
    task calendar
    task summary
    task
end

task_info
