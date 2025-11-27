myTimer = time_source_create(time_source_game, 2, time_source_units_seconds, fadeToRoom, [rm_MainMenu, 61, c_black], 1);
time_source_start(myTimer); // starts the timer