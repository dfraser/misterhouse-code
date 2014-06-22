my $motion_timer = new Timer();

if ($front_dr_motion->state_now() eq ON) {
	print_log("motion detected");
	if ($Dark) {
		print_log("..and it's dark");
		$motion_timer->set(600);
		if ($front_dr_ceiling->state() eq OFF) {
			print_log("...and the light was off");
	        	$front_dr_ceiling->set("50%","front_dr_motion");
		} else {
			print_log("...but the light was already on.");	
		}
	} else {
		print_log("...but it's light.");	
	}
}

if ($motion_timer->expired()) {
	print_log("motion sensor timer expired");
	if ($front_dr_ceiling->get_set_by() eq "front_dr_motion") {
		print_log("light was still set by motion sensor, turning it off");
		$front_dr_ceiling->set(OFF);
	} else {
		print_log("light was set by ".$front_dr_ceiling->get_set_by()." so leaving it on!");
	}
}

