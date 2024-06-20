local Utils = {}

function Utils.parse_color_scheme_json(system_color_path)
  local json_file = io.open(system_color_path, "r")
  if json_file == nil then
    return print("Failed to open JSON file")
  end
  local json_content = json_file:read("*all")

  json_file:close()

  local parsed_object = vim.json.decode(json_content)
  for key, value in pairs(parsed_object) do
    if key ~= "author" or key ~= "name" then
      parsed_object[key] = "#" .. value
    end
  end

  return parsed_object
end

function Utils.highlight(group, args)
  if args.link ~= nil then
    return vim.cmd(string.format("highlight! link %s %s", group, args.link))
  end

  local command = string.format(
    "highlight %s guifg=%s guibg=%s gui=%s guisp=%s",
    group,
    args.fg or "NONE",
    args.bg or "NONE",
    args.attr or "NONE",
    args.sp or "NONE"
  )
  vim.cmd(command)
end

return Utils
