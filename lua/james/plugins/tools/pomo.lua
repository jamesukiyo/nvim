require("pomo").setup({
	update_interval = 500,
	sessions = {
		pomodoro = {
			{ name = "Work", duration = "25m" },
			{ name = "Break", duration = "5m" },
			{ name = "Work", duration = "25m" },
			{ name = "Break", duration = "5m" },
			{ name = "Work", duration = "25m" },
			{ name = "Break", duration = "15m" },
		},
	},
	notifiers = {
		{
			name = "Default",
			opts = {
				sticky = false,
			},
		},
		-- {
		-- 	name = "System", -- Doesn't work on Windows yet
		-- },
	},
})
