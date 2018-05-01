script.on_event({defines.events.on_tick},
   function (e)
      if e.tick % 60 == 0 then --common trick to reduce how often this runs, we don't want it running every tick, just 1/second
         for key, entity in pairs (game.surfaces[1].find_entities_filtered{name = "filter-wagon"} ) do
			if entity.train then
				update_train(entity.train, entity)
			end
		 end
      end
   end
)

function update_train(train, wagon)
	if (train.state == defines.train_state.wait_station) then
		wagon.set_filter(1, "iron-plate")
		local inv = wagon.get_inventory(defines.inventory.cargo_wagon)
		
		local inv.set_filter(1, "iron-plate")
		
		canSup = inv.supports_filters()
		if (canSup) then
			print("waiting true " .. inv.get_filter(1))
		else 
			print("waiting false")
		end
	end
end

function print(s)
	for index,player in pairs(game.connected_players) do  --loop through all online players on the server
		player.print(s)
	end
end