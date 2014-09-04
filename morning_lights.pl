if (time_now("6:10") and $Weekday) {
	$dining_rm_ceiling->set(ON);
	$kitchen_ceiling->set(ON);
	$front_dr_ceiling->set(ON);
	$living_rm_lamp->set(ON);
	$hall_ceiling->set(ON);
	$bedside_r->set(ON);
}

if (time_now("9:00") and $Weekday) {
	$All_Lights->set(OFF);
}

