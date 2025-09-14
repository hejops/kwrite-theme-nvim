local colors = {

	-- green = "#a6e22e",
	-- orange = "#b07e00",
	black = "#000000",
	cyan = "#66d9ef",
	grey = "#838183",
	purple = "#ae81ff",
	red = "#f92672",
	white = "#e0eaee",
	yellow = "#e6db74",
}

local function f(c)
	return {
		a = { bg = c, fg = colors.black, gui = "bold" },
		b = { bg = colors.grey, fg = colors.white },
		c = { fg = colors.white },
	}
end

return {
	normal = f(colors.cyan),
	insert = f(colors.yellow),
	visual = f(colors.purple),
	command = f(colors.red),
	-- replace = {
	-- 	a = { bg = colors.red, fg = colors.black, gui = "bold" },
	-- 	b = { bg = colors.grey, fg = colors.white },
	-- 	c = { bg = colors.black, fg = colors.white },
	-- },
	-- inactive = {
	-- 	a = { bg = colors.grey, fg = colors.gray, gui = "bold" },
	-- 	b = { bg = colors.grey, fg = colors.gray },
	-- 	c = { bg = colors.grey, fg = colors.gray },
	-- },
}
