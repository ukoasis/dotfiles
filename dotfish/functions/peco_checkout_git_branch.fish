function peco_checkout_git_branch
  if git_is_repo
    git branch -a | peco | tr -d ' ' | read branch
    echo $branch
    if [ $branch ]
      set -l is_remote (string match "remotes\/*" $branch)
      echo $is_remote
      if [ -n is_remote ]
        set -l b (string replace "remotes/origin/" "" $branch)
        echo $b
        git checkout $b
      else
        git checkout $branch
      end
    end
    commandline -f repaint
  else
    echo '.git?'
  end
end

