function fish_user_key_bindings
  # コマンド履歴を見る
  bind \cr peco_select_history
  # プロセスをキルする
  bind \ck peco_kill
  # 最近見たディレクトリに移動
  bind \cx\cr peco_recentd

  bind \cx\co peco_checkout_git_branch
  bind \cx\ci peco_insert_git_branch
end

