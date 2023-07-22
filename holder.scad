$fn=50*1.0;

include <lego_beam.scad>;

s=0.2;
u=5; /* replace with desired unit height e.g. u=5 generates U5 high rail */

for (i = [0:u-1]) {
    translate([i*44.45,0,0]) {
        ux1();
    }
}


module ux1()
{
    scale([1,1,1]) {
	    translate([0,-20/2-3/2+3 ,20/2-2/2]) {
		    rotate([90,0,0]) {
                vertical();
            }
        }
        horizontal();
    }
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
            cube(size = [44.50,20,3], center = true);
        }
        union() {
            translate([-45/4,0,-1.51])
                m4_cone_3mm();
            translate([45/4,0,-1.51])
                m4_cone_3mm();
        }
    }
}

module horizontal()
{
    difference() {
        union() {
            cube(size = [44.5,20,2], center = true);
        }
        union() {
            translate([0,2.5,0])
                cube(size = [9+s,9+s,10], center = true);
            translate([-44.5/2+6.35,2.5,0])
                cube(size = [9+s,9+s,10], center = true);
            translate([44.5/2-6.35,2.5,0])
                cube(size = [9+s,9+s,10], center = true);

        }
    }
}
