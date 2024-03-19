return {
	"mfussenegger/nvim-dap",
	config = function ()
		require("dap").adapters.codelldb = {
			type = "server",
			port = "${port}",
			executable = {
				command = "/Users/anthonydurrer/Dev/compiled/codelldb-aarch64-darwin/extension/adapter/codelldb", -- adjust as needed
				args = {"--port", "${port}"},
			}
		}

		local codelldb = {
			name = "Launch file",
			type = "codelldb",
			request = "launch",
			program = function()
			  return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
			end,
			cwd = '${workspaceFolder}',
			stopOnEntry = false,
		  }

		require('dap').configurations.cpp = {
			codelldb -- different debuggers or more configurations can be used here
		}

		require('dap').defaults.fallback.force_external_terminal = false

		-- Key remaps
		vim.fn.sign_define('DapBreakpoint', {text='b', texthl='', linehl='', numhl=''})
		vim.fn.sign_define('DapStopped', {text='s', texthl='', linehl='', numhl=''})

		vim.keymap.set("n", "<leader>dh", function() require('dap').toggle_breakpoint()  end)
		vim.keymap.set("n", "<S-k>", function() require('dap').step_out()  end)
		vim.keymap.set("n", "<S-l>", function() require('dap').step_into()  end)
		vim.keymap.set("n", "<S-j>", function() require('dap').step_over()  end)
		vim.keymap.set("n", "<leader>dn", function() require('dap').continue()  end)
		vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
		vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
		vim.keymap.set({'n', 'v'}, '<Leader>dy', function()
			require('dap.ui.widgets').hover()
		end)
		vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
			require('dap.ui.widgets').preview()
		end)
		vim.keymap.set('n', '<Leader>df', function()
			local widgets = require('dap.ui.widgets')
			widgets.centered_float(widgets.frames)
		end)
		vim.keymap.set('n', '<Leader>ds', function()
			local widgets = require('dap.ui.widgets')
			widgets.centered_float(widgets.scopes)
		end)
	end
}
