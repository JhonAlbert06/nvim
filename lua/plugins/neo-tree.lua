return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x", -- Asegúrate de estar usando la rama correcta
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- Iconos
    "MunifTanjim/nui.nvim",       -- Interfaz de usuario
  },
  config = function()
    -- Configuración básica
    require("neo-tree").setup({
      close_if_last_window = true, -- Cierra Neo-tree si es la última ventana abierta
      popup_border_style = "rounded", -- Bordes redondeados para ventanas emergentes
      enable_git_status = true, -- Habilita integración con Git
      enable_diagnostics = false, -- Desactiva diagnósticos si no los necesitas
      filesystem = {
        follow_current_file = true, -- Sigue el archivo actual en el explorador
        hijack_netrw_behavior = "open_current", -- Reemplaza Netrw con Neo-tree
      },
    })

    -- Atajos de teclado
    vim.keymap.set("n", "<C-n>", ":Neotree toggle left<CR>", { desc = "Abrir/cerrar Neo-tree" })
    vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>", { desc = "Enfocar Neo-tree" })
  end,
}
