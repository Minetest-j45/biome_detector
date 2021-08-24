minetest.register_chatcommand("biome", {
  params = "",
  description = "Get the name of the biome you are in",
  func = function(name)
    local player = minetest.get_player_by_name(name)
    local pos = player:get_pos()
    local bid = minetest.get_biome_data(pos).biome
    local bname = minetest.get_biome_name(bid) or "There was an error finding your biome"
    minetest.chat_send_player(name, bname)
  end
})
