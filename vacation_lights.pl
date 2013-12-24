if (time_now("$Time_Sunset - 1:30")) {
	$dining_rm_ceiling->set("50%");
	$kitchen_ceiling->set("75%");
	$front_dr_ceiling->set(ON);
	$living_rm_lamp->set(ON);
	$bedside_r->set(ON);
}

if (time_now("23:30")) {
	$All_Lights->set(OFF);
}

