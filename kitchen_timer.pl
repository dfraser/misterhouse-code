my $kitchen_fan_timer = new Timer();

if ($kitchen_fan->state_now() eq ON and $kitchen_fan_timer->inactive()) {
	$kitchen_fan_timer->set(1800);
	print_log("kitchen fan timer set");
} elsif ($kitchen_fan_timer->expired()) {
	print_log("turning off kitchen fan");
	$kitchen_fan->set(OFF);
}



