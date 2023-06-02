local obs = obslua

function launchProgramOnRecordingStart()
    os.execute("start /d \"C:\\Program Files\\WindowsApps\\15740Catmip5Media.Mousepointerhighlight_1.0.8.0_neutral__ebrkpvyp7qhf0\\MouseHighlight\" MouseHighlight.exe")
end

function script_description()
    return "Launches a program when recording starts"
end

-- Called when the script is loaded
function script_load(settings)
    obs.obs_frontend_add_event_callback(on_event_callback)
end

-- Called when an OBS event occurs
function on_event_callback(event)
    if event == obs.OBS_FRONTEND_EVENT_RECORDING_STARTED then
        launchProgramOnRecordingStart()
    end
end
