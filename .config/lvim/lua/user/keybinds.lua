-- Keybinds
lvim.keys.insert_mode["jk"] = "<Esc>"
lvim.keys.insert_mode["kj"] = "<Esc>"

-- X closes a buffer
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"

lvim.keys.normal_mode["<C-x>"] = "<Plug>(neorg.qol.todo-items.todo.task-cycle)"
