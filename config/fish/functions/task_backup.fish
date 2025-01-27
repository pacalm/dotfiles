function task_backup
    pushd ~/.task
    if test -n "$(git status --porcelain)"
        echo "there are changes"
        set message $(date "+%Y-%m-%d %H:%M:%S")
        git add . \
            && git commit -m "task backup: $message" \
            && git push
    else
        echo "no changes"
    end

    popd
end
