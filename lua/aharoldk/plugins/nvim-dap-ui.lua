return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap" },
  config = function()
    local dapui = require("dapui")
    dapui.setup()

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>dt", ":lua require('dapui').toggle()<CR>", { noremap = true })
    keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", { noremap = true })
    keymap.set("n", "<leader>dc", ":DapContinue<CR>", { noremap = true }) 
    keymap.set("n", "<leader>dr", ":lua require('dapui').open({reset = true})<CR>", { noremap = true })
  end,
}
