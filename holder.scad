$fn=50*1.0;

include <lego_beam.scad>;


scale([1,1,1]) {
	translate([0,-20/2-3/2+3 ,20/2-2/2]) {
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
            translate([-44.5/2+6.35,2.5,-5])
                cylinder(h=10, r1=3.55, r2=3.55);
            translate([44.5/2-6.35,2.5,-5])
                cylinder(h=10, r1=3.55, r2=3.55);

        }
    }
}
