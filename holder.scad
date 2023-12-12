$fn=50*1.0;

include <lego_beam.scad>;

// length of rack equipment mounting bracket 19 inch or 486.2 mm
// max length of equipment body 449
// (482.6-449)/2 = 16.8

scale([1,1,1]) {
	translate([0, -16/2-1.5,3]) {
		rotate([90,0,0]) {
            vertical();
        }
    }
    horizontal();


}

module m4_cone_3mm()
{
    union() {
        cylinder(h=3.02, r1=4/2+0.1, r2=4/2+0.1);
        cylinder(h=2.2, r1=7.5/2+0.1, r2=4/2+0.1);
    }
}

module vertical()
{
    difference() {
        union() {
            cube(size = [39.25*2,12,3], center = true);
        }
        union() {
            translate([-45/2,0,-1.51])
                m4_cone_3mm();
            translate([45/2,0,-1.51])
                m4_cone_3mm();
            translate([0,0,-1.51])
                m4_cone_3mm();
        }
    }
}

module horizontal()
{
    difference() {
        union() {
            cube(size = [44.5*2,16,6], center = true);
        }
        union() {
            translate([-44.5+6.15,0,-5])
                cylinder(h=10, r1=3.55, r2=3.55);
            translate([44.5-6.15,0,-5])
                cylinder(h=10, r1=3.55, r2=3.55);
            union() {
                rotate([90,0,0]) {
                    translate([-45/2,13/4,-40/2])
                       cylinder(h=40, r1=4.1, r2=4.1);
                    translate([45/2,13/4,-40/2])
                        cylinder(h=40, r1=4.1, r2=4.1);
                    translate([0,13/4,-40/2])
                        cylinder(h=40, r1=4.1, r2=4.1);
                }
            }
        }
    }
}
