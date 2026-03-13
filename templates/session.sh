session_root "~/code/{{SESSION_NAME}}"
window_root "~/code/{{SESSION_NAME}}"

if initialize_session "{{SESSION_NAME}}"; then
  new_window "{{SESSION_NAME}}"
  #run_cmd "git pull"

  #new_window "nvim"

  select_window 1
fi

finalize_and_go_to_session
