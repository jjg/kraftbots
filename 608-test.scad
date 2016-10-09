// test part to work out kinks of mounting 608 bearings
// 608 bearing
// OD = 22mm
// ID = 8mm
// Height = 7mm
//
difference(){

	// box to hold the bearing
	translate([-(30/2),-(30/2),0]){
		cube([30,30,10]);
	}

	// opening to hold bearing stator
	translate([0,0,3]){
		cylinder(r=(22.5/2), h=8);
	}

	// opening for bearing rotor
	translate([0,0,-1]){
		cylinder(r=10, h=9);
	}
}