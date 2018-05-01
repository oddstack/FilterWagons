script.on_event({defines.events.on_tick},
   function (e)
      if e.tick % 60 == 0 then --common trick to reduce how often this runs, we don't want it running every tick, just 1/second
         for key, entity in pairs (game.surfaces[1].find_entities_filtered{name = "cargo-wagon"} ) do
			print("1")
		 end
      end
   end
)

function print(s)
	for index,player in pairs(game.connected_players) do  --loop through all online players on the server
		player.print(s)
	end
end