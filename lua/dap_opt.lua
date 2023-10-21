local dap = require('dap')
local dapui = require('dapui')

-- get input on runtimelocal
local get_args = function() return vim.split(vim.fn.input('args: ', '', 'file'), ' ') end

dap.defaults.fallback.exception_breakpoints = { 'all' }

-- INFO: execute ~/Downloads/vscode-extensions/codelldb/extension/adapter/codelldb --port 13000
dap.adapters.codelldb = {
    type = 'server',
    port = '13000',
    executable = {
      command = os.getenv('HOME') .. '/.vscode/extensions/vadimcn.vscode-lldb-1.9.1/adapter/codelldb',
      args = {'--port', '13000'},
    }
}

dap.configurations.rust = {
    {
        name = 'Rust debug',
        type = 'codelldb',
        request = 'launch',
        cwd = '${workspaceFolder}',
        -- stopOnEntry = true,
        program = function()
          return vim.fn.input('Path to exectuable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
        end,
        terminal = 'integrated',
        sourceLanguages = { 'rust' },
        args = get_args,
    }
}


vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>c', function() dap.continue() end)
vim.keymap.set('n', '<Leader>n', function() dap.step_over() end)
vim.keymap.set('n', '<Leader>u', function() dap.step_out() end)
vim.keymap.set('n', '<Leader>d', function() dap.step_into() end)

dapui.setup()

--vim.keymap.set('n', ':debug<cr>', function() dapui.toggle() end)

-- auto open and close dapui
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
