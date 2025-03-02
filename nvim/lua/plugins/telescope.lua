return {

    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },
        config = function()
            require("telescope").setup({
                extensions = {
                    "fzf",
                },
                defaults = {
                    layout_strategy = "horizontal",
                    layout_config = {
                        height = 0.95,
                        prompt_position = 'top',
                    },
                    mappings = {
                        i = {
                            ["<A-v>"] = require("telescope.actions").file_vsplit,
                        },
                        n = {
                            ["<A-v>"] = require("telescope.actions").file_vsplit,
                        },
                    },
                },
                pickers = {
                    find_files = {
                        find_command = { "rg", "--files", "--hidden", "--glob=**/**", "--glob=!**/.git/*", "--glob=!**/.idea/*",
                        "--glob=!**/build/*", "--glob=!**/dist/*",
                        "--glob=!**/node_modules/*",
                        "--glob=!**/**lock**" }
                    },
                    live_grep = {
                        additional_args = { "--hidden",  "--glob=**/**", "--glob=!**/.git/*", "--glob=!**/.idea/*",
                        "--glob=!**/build/*", "--glob=!**/dist/*",
                        "--glob=!**/node_modules/*",
                        "--glob=!**/**lock**" }
                    }
                }
            })
            require("telescope").load_extension("fzf")

            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {
                silent = true,
                desc = 'Find Files'
            })
    
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
                silent = true,
                desc = 'Live Grep'
            })
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {
                silent = true,
                desc = 'Find Buffers'
            })
        end,
    },
}
