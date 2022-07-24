$fn=50*1.0;

include <lego_beam.scad>;

s=0.1; //slack

translate([0,0,0])
    top();
//bottom();
translate([-8/2,31/2+2,8]) {
        rotate([90,90,90]) {
            lego_beam(3);
        }
    }



//translate([0,0,0])
//    cube([53,31,119],center=true);

module horizontal()
{
    cube([53,31,1.6]);
}

module bottom()
{
    difference() {
        cube([53+4,31+4,4],center=true);
        translate([0,0,2])
            cube([53,31,4],center=true);
        translate([0,0,-2])
            cube([53-14,31-10,6],center=true);
    }
}

module top()
{
    difference() {
        cube([53+4,31+4,30],center=true);
        translate([0,0,0])
            cube([53+s,31+s,36],center=true);

    }
}

module beam()
{
    cube([53+4,31+4,4],center=true);
}