function spawn_biter(arguments)
	count = arguments.parameter

	if count == nil then
		count = 1
	else
		count = tonumber(count)
	end

	for i=1, count, 1 do 

		size = math.random(1, 100)

		if size <= 40 then
			entity = "small"

		elseif size <= 70 then
			entity = "medium"

		elseif size <= 90 then
			entity = "big"

		else
			entity = "behemoth"

		end

		if math.random(0, 1) == 0 then
			entity = entity .. "-biter"
		else
			entity = entity .. "-spitter"
		end

		game.surfaces.nauvis.create_entity({name=entity, position={x=0, y=0}})
	end

end

function rename_train_stop(arguments)
	name = arguments.parameter

	if name == nil then
		return
	end

	train_stops = game.surfaces.nauvis.find_entities_filtered({type="train-stop"})

	if #train_stops == 0 then
		game.print("No Train Stops Are Availible!")
		return
	end

	train_stop = train_stops[math.random(#train_stops)]
	train_stop.backer_name = name

end

commands.add_command("spawn_biter", "Spawns a nasty biter", spawn_biter)
commands.add_command("rename_train_stop", "Renames a random train stop", rename_train_stop)

script.on_init(function()
   game.surfaces.nauvis.set_tiles{{name="hazard-concrete-left",position={0, 0}}}
end)
