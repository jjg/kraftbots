use <publicDomainGearV1.1.scad>

// pinion

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

// idler
translate([0,15.4,0]){

	color("red")
	gear(
		mm_per_tooth = 3,
		number_of_teeth = 21,
		thickness = 5, //6,
		hole_diameter = 4, //3,
		twist = 0,
		teeth_to_hide = 0,
		pressure_angle = 28,
		clearance = 0.0,
		backlash = 0.0
	);

	// idler arm
	translate([-5,2,-2.5]){
		color("red")
		cube([10,30,5]);
	}

	// idler axel
	translate([0,0,-3]){
		color("blue")
		cylinder(r=(5/2)-.75, h=8, $fn=50);
	}

}

// plate
difference(){
	translate([-5, -5,-4.5]){
		color("blue")
		cube([10,30,2]);
	}
	// motor mount
	translate([0,0,-4]){
		cylinder(r=1.5, h=4, $fn=50);
	}
	translate([0,0,-5]){
		cylinder(r=(7/2), h=2, $fn=50);
	}
}
