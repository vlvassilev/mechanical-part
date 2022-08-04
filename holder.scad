$fn=50*1.0;

include <lego_beam.scad>;

// length of rack equipment mounting bracket 19 inch or 486.2 mm
// max length of equipment body 449
// (482.6-449)/2 = 16.8

scale([1,1,1]) {
	translate([30/2-4/2,16.8/2+4/2 ,-44.5/2+20/2]) {
		rotate([90,0,0]) {
            horizontal();
        }
    }
	translate([30/2-4/2,100/2+16.8/2+4,-44.5/2+4/2+4]) {
		rotate([0,180,0]) {
            vertical2();
        }
    }
	translate([0,0,0]) {
		rotate([0,90,0]) {
            vertical();
        }
    }


}

module m4_cone_3mm()
{
    union() {
        cylinder(h=3.02, r1=4/2+0.1, r2=4/2+0.1);
        cylinder(h=2.2, r1=7.5/2+0.1, r2=4/2+0.1);
    }
}

module horizontal()
{
        cube(size = [30,20,4], center = true);
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

module vertical2()
{
    difference() {
        union() {
            cube(size = [30,100,4], center = true);
        }
        union() {
            translate([0,-52/2,-5])
                cylinder(h=10, r1=3.55, r2=3.55);
            translate([0,52/2,-5])
                cylinder(h=10, r1=3.55, r2=3.55);
        }
    }
}
