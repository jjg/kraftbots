use <publicDomainGearV1.1.scad>

// worm
gear(
	mm_per_tooth = 3,
	number_of_teeth = 11,
	thickness = 30, //6,
	hole_diameter = 2.3, //3,
	twist = 360, //0,
	teeth_to_hide = 0,
	pressure_angle = 28,
	clearance = 0.0,
	backlash = 0.0
);

translate([10, 0, 0]){
rotate([90,0,0]){
gear(
	mm_per_tooth = 3,
	number_of_teeth = 11,
	thickness = 5, //6,
	hole_diameter = 2.3, //3,
	twist = 0,
	teeth_to_hide = 0,
	pressure_angle = 28,
	clearance = 0.0,
	backlash = 0.0
);
}
}
