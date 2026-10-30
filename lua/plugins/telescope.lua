return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    keys = {
        {
            "<leader>ff",
            function()
                require("telescope.builtin").find_files()
            end,
            desc = "Find files",
        },

        {
            "<leader>fg",
            function()
                require("telescope.builtin").live_grep()
            end,
            desc = "Live grep",
        },
    },

    config = function()
        local telescope = require("telescope")
        local action_state = require("telescope.actions.state")
        local harpoon = require("harpoon")

        local function add_to_harpoon(prompt_bufnr)
            local selection = action_state.get_selected_entry()
            local list = harpoon:list()

            local item = list.config.create_list_item(
                list.config,
                selection.path
            )

            list:add(item)
        end

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-a>"] = add_to_harpoon,
                    },

                    n = {
                        ["<C-a>"] = add_to_harpoon,
                    },
                },
            },
        })
    end,
}
