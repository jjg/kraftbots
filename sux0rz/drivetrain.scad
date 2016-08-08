use <../libraries/OpenSCAD/publicDomainGearV1.1.scad>

// drivetrain constants
// motor rpm 16800 (estimated)
// wheel diameter = 7in
// wheel circumference = 21.98in
// feet per rpm 1.831
// At 1 rpm, wheel travels 
// max speed = 10mph

// With a 30:1 ratio 16800 ~ 11.7MPH

// this describes the existing metal gear on the motor

pinion_teeth = 8;
pinion_length = 17.5;
motor_shaft = 3.18;

/*
		// pinion
		translate([0,0,0]){
			color("orange")
			//cylinder(r=gear/2, h=gear_length);
			gear(
				mm_per_tooth = 3,
				number_of_teeth = pinion_teeth,
				thickness = pinion_length, //6,
				hole_diameter = motor_shaft, //3,
				twist = 0,
				teeth_to_hide = 0,
				pressure_angle = 28,
				clearance = 0.0,
				backlash = 0.0
			);
		}
*/

difference(){

	// one gear
	gear(
		mm_per_tooth = 3,
		number_of_teeth = (pinion_teeth * 15),
		thickness = pinion_length,
		hole_diameter = 10,
		pressure_angle = 28
	);

	// cut-outs
	translate([30,0,-((pinion_length/2)+1)]){
		cylinder(r=20,h=20);
	}
	translate([-30,0,-((pinion_length/2)+1)]){
		cylinder(r=20,h=20);
	}
	translate([0,30,-((pinion_length/2)+1)]){
		cylinder(r=20,h=20);
	}
	translate([0,-30,-((pinion_length/2)+1)]){
		cylinder(r=20,h=20);
	}
}