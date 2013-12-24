my $motion_timer = new Timer();

if ($front_dr_motion->state_now() eq ON) {
	print_log("motion detected");
	if ($motion_timer->inactive()) {
		print_log("sending motion notification");
		$motion_timer->set(600);
		notify_pushover("Motion","Motion Detected at Front Door");
	} else {
		print_log("motion notification prevented by timer");
	}
}

if ($motion_timer->expired()) {
	$front_dr_motion->set(OFF);
}
