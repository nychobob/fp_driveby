local check = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if (IsPedDoingDriveby(GetPlayerPed(-1)) or (GetVehiclePedIsIn(GetPlayerPed(-1), false) and IsPedShooting(GetPlayerPed(-1))) and not check and IsPedArmed(GetPlayerPed(-1), 7)) then
			SetFollowVehicleCamViewMode(4)
			SetCamViewModeForContext(2, 4)
			check = true
		else
			if check then
				SetFollowVehicleCamViewMode(1)
				SetCamViewModeForContext(2, 1)
				check = false
			end
		end
	end
end )


