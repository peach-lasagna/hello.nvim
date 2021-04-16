local M = {}
local uv = vim.loop 


local function read_file(path)
  local fd = uv.fs_open(path, "r", 438)
  if not fd then return '' end
  local stat = uv.fs_fstat(fd)
  if not stat then return '' end
  local data = uv.fs_read(fd, stat.size, 0)
  uv.fs_close(fd)
  return data or ''
end

function M.random_phrase(path)
  local data = read_file(path):gmatch("[^\r\n]+")
  print(data[math.random(#data)])
end

return M
