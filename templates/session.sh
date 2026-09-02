root="$HOME/code/{{SESSION_NAME}}"

if [ ! -d "$root" ]; then
  git clone ... "$root"
fi

session_root "$root"
window_root "$root"

if initialize_session "{{SESSION_NAME}}"; then
  new_window "nvim"

  new_window "{{SESSION_NAME}}"
  run_cmd "git pull --rebase --autostash"

  select_window 1
fi

finalize_and_go_to_session
