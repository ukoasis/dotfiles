function peco_checkout_git_branch
  if git_is_repo
    git branch -a | peco | tr -d ' ' | read branch
    echo $branch
    if [ $branch ]
        if contains $branch "remotes/"
            set -l b (echo $branch | awk -F'/' '{print $3}')
            git checkout -b $b $branch
        else
            git checkout $branch
        end
    end
    commandline -f repaint
  else
    echo '.git?'
  end
end

