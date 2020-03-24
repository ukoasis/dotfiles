function peco_insert_git_branch
  if git_is_repo
    git branch | peco | tr -d ' ' | read branch
    echo $branch
    if [ $branch ]
      commandline -i $branch
    end
    commandline -f repaint
  else
    echo '.git?'
  end
end

