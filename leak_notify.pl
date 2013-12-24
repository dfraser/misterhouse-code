my $leak_timer = new Timer();

if ($kitchen_leak_wet->state_now() eq ON) {
	print_log("leak detected");
	if ($leak_timer->inactive()) {
		print_log("sending leak notification");
		$leak_timer->set(600);
		notify_pushover("Leak","Water Detected in Kitchen!",2);
	} else {
		print_log("leak notification prevented by timer");
	}
}

if ($leak_timer->expired()) {
	$kitchen_leak_wet->set(OFF);
}
