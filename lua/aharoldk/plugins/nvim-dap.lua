return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require('dap')

    dap.adapters.kotlin = {
      type = 'executable';
      command = '/absolute/path/to/kotlin-debug-adapter';
    }

    dap.adapters.java = {
      type = 'server';
      host = '127.0.0.1';
      port = port;
    }

    dap.configurations.kotlin = {
      {
          type = 'kotlin';
          request = 'launch';
          name = 'Launch kotlin program';
          projectRoot = "${workspaceFolder}/app";
          mainClass = "AppKt";
      },
    }

    dap.configurations.java = {
      {
        type = 'java';
        request = 'attach';
        name = "Debug (Attach) - Remote";
        hostName = "127.0.0.1";
        port = 5005;
      },
    }

  end,
}
