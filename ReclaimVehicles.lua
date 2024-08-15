function reclaimVehicles()
for k, v in menu.get_children(menu.ref_by_path("Vehicle>Personal Vehicles")) do
		for k1, v1 in v.command_names do
			if (v1 ~= "findpv")
			then
				menu.trigger_commands(v1.."request")
			end
		end
	end
end


menu.action(menu.my_root(), "Claim all vehicles", {"claimallvehicles"}, "Claims all vehicles destroyed from Mors Mutual.\nNo need to keep calling them back :).", function ()
	reclaimVehicles()	
end)
util.on_transition_finished(function ()
	reclaimVehicles()
end)
util.keep_running()