$fn=50*1.0;

include <lego_beam.scad>;

// length of rack equipment mounting bracket 19 inch or 486.2 mm
// max length of equipment body 449
// (482.6-449)/2 = 16.8

cisco_offset=3.75;

scale([1,1,1]) {
	translate([30/2-4/2,16.8/2+4/2 ,0]) {
		rotate([90,0,0]) {
            horizontal();
        }
    }

	translate([0,0,0]) {
		rotate([0,90,0]) {
            vertical();
        }
    }


}

module imperial6_32_cone_3mm()
{
    union() {
        cylinder(h=7, r1=3.6576/2+0.1, r2=3.6576/2+0.1);
        cylinder(h=2.2, r1=6.9/2+0.1, r2=3.6576/2+0.1);
    }
}

module imperial6_32_flat_2mm()
{
    union() {
        cylinder(h=7, r1=3.6576/2+0.1, r2=3.6576/2+0.1);
        cylinder(h=2.2, r1=6.9/2+0.1, r2=6.9/2+0.1);
    }
}


//holes are in unilateral triangle
//sqrt(14*14-7*7) ans = 12.124
module horizontal()
{

    difference() {
        cube(size = [30,44.5,4], center = true);
            rotate([180,0,0])
                translate([-30/2+15,-12.124/2-cisco_offset,-2.1])
                    imperial6_32_flat_2mm();
            rotate([180,0,0])
                translate([-30/2+15/2,12.124/2-cisco_offset,-2.1])
                    imperial6_32_flat_2mm();
            rotate([180,0,0])
                translate([-30/2+15+15/2,12.124/2-cisco_offset,-2.1])
                    imperial6_32_flat_2mm();
    }
}



module vertical()
{
    difference() {
        union() {
            cube(size = [44.5,16.8,4], center = true);
        }
        union() {
            translate([-44.5/2+6.15,0,-5])
                cylinder(h=10, r1=3.55, r2=3.55);
            translate([44.5/2-6.15,0,-5])
                cylinder(h=10, r1=3.55, r2=3.55);

        }
    }
}
