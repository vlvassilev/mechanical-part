$fn=50*1.0;

include <lego_beam.scad>;

s=0.1; //slack
bat_width=21; //battery pack width



//Part 1
translate([0,0,0])
    top();

translate([-8,8/2,-(78+4)/2-8]) {
        rotate([90,0,0]) {
            lego_beam(3);
        }
    }
translate([0,0,+(78+4)/2+2/2])
    middle();

//Part 2
translate([0,0,78/2+24/2+8]) {
    cap();
    translate([0,0,24/2+4/2])
        front();
    translate([0,0,-24/2-2])
        edge();
}

module top()
{
    difference() {
        cube([81+4,bat_width+4,78+4],center=true);
        translate([0,0,2])
            cube([81+s,bat_width+s,78+4],center=true);

    }
}

module middle()
{
    difference() {
        cube([81+4,39,4],center=true);
        translate([0,0,0])
            cube([81,bat_width+s,78+4],center=true);
            translate([(81+4)/2-4,39/2-4,-3])
                cylinder(h=100, r1=2.7/2, r2=2.7/2);
            translate([(81+4)/2-4,-39/2+4,-3])
                cylinder(h=100, r1=2.7/2, r2=2.7/2);
            translate([-(81+4)/2+4,-39/2+4,-3])
                cylinder(h=100, r1=2.7/2, r2=2.7/2);
            translate([-(81+4)/2+4,+39/2-4,-3])
                cylinder(h=100, r1=2.7/2, r2=2.7/2);
    }
}

module cap()
{
    difference() {
            cube([81+4,39,24+4],center=true);

        translate([0,0,2])
            cube([81+s,39-4+s,78+4],center=true);

    }
}

module front()
{
    difference() {
        cube([81+4,39,4],center=true);

        translate([0,0,0])
            translate([(81+4)/2-4,39/2-4,-3])
                cylinder(h=6, r1=2.7/2, r2=2.7/2);
            translate([(81+4)/2-4,-39/2+4,-3])
                cylinder(h=6, r1=2.7/2, r2=2.7/2);
            translate([-(81+4)/2+4,-39/2+4,-3])
                cylinder(h=6, r1=2.7/2, r2=2.7/2);
            translate([-(81+4)/2+4,+39/2-4,-3])
                cylinder(h=6, r1=2.7/2, r2=2.7/2);
            translate([0,19.05/2,-5])
                cylinder(h=10, r1=4.1, r2=4.1);
            translate([0,-19.05/2,-5])
                cylinder(h=10, r1=4.1, r2=4.1);

    }
}

module edge()
{
    difference() {
        cube([81,39-4,4],center=true);

        translate([0,0,0])
            cube([81-4+s,39-8+s,78-4],center=true);

    }
}
