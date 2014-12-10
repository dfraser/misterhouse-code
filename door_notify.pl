my $door_timer = new Timer();

if ($front_dr_sensor->state_now() eq ON) {
	print_log("door open detected");
	if ($motion_timer->inactive()) {
		print_log("sending door notification");
		$door_timer->set(600);
		notify_pushover("Door Open","Condo door has been opened!");
	} else {
		print_log("door notification prevented by timer");
	}
}

if ($door_timer->expired()) {
	$front_dr_sensor->set(OFF);
}
