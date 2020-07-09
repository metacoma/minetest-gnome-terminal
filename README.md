USE ONLY IN SINGLEPLAYER mode, it's a one big security hole

```
minetest.register_node("node:dhcp", {
  tiles = { node_dhcp },
  paramtype = "light",
  diggable = false,
  inventory_image = minetest.inventorycube(node_dhcp),
  on_punch = function(pos, node, player, pointed_thing) 
    getUserChannel(player:get_player_name()):send_all("GNOME_TERMINAL_SCREEN='' gnome-terminal -e 'ssh -t entrypoint tmuxinator start dhcp'")
  end,

})
```
[![minetest gnome-terminal](https://img.youtube.com/vi/4LH5Fyt-cQM/0.jpg)](https://www.youtube.com/watch?v=4LH5Fyt-cQM)
