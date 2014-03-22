my $bathroom_fan_timer = new Timer();

if ($bathroom_fan->state_now() eq ON and $bathroom_fan_timer->inactive()) {
	$bathroom_fan_timer->set(1200);
	print_log("bathroom fan timer set");
} elsif ($bathroom_fan_timer->expired()) {
	print_log("turning off bathroom fan");
	$bathroom_fan->set(OFF);
}



