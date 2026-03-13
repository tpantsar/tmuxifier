session_root "~/code/{{SESSION_NAME}}"

if initialize_session "{{SESSION_NAME}}"; then
  #window_root "~/dotfiles"
  new_window "{{SESSION_NAME}}"
  #run_cmd "git pull"

  #new_window "nvim"

  select_window 1
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
