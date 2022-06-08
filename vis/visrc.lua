-- load standard vis runtime files, must be done before anything else
require('vis')

-- load plugin called `<name>` (notice the omission of the `.lua` file extension)
require('plugins/vis-cursors')
-- require('plugins/vis-ins-completion')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
	vis:command('set theme gruvbox')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- Your per window configuration options e.g.
	vis:command('set number')
	vis:command('set tabwidth 4')
	-- vis:command('set layout v')
	vis:command('set ignorecase on')
	vis:command('set autoindent on')
	vis:command('set cursorline on')
end)
