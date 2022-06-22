local status_ok, auto_session = pcall(require, "auto-session")
if not status_ok then
	return
end

local function close_tree()
	vim.cmd [[NvimTreeClose]]
end

auto_session.setup {
	log_level = 'info',
	auto_session_suppress_dirs = { '~/', '~/Projects' },
	pre_save_cmds = { close_tree }
}
