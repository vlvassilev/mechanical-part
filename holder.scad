    $fn=50*1.0;

include <lego_beam.scad>;


bracket_len=486.2; // length of rack equipment mounting bracket 19 inch
bracket_height = 44; // actually 44.45 mm 1.75 inch
body_len=449; // max length of equipment body
ear_len=(bracket_len-body_len)/2; //18.6

horizontal_offset_from_end = 0.625*25.4/2; //0.625 inch is the side rail and the hole is in the middle
vertical_hole_distance = 31.75;
mounting_hole_radius = 3.55;


/*
	translate([30/2-4/2,ear_len/2+4/2,-bracket_height/2+20/2]) {
		rotate([90,0,0]) {
            horizontal();
        }
    }

	translate([30/2-4/2,bracket_len/4-1.5*ear_len-4/2,-bracket_height/2+20/2]) {
		rotate([90,0,0]) {
            horizontal();
        }
    }

	translate([-4/2,(bracket_len/4-2*ear_len-2*4)/2+ear_len/2+4,-bracket_height/2+4/2]) {
		rotate([0,180,0]) {
            vertical2();
        }
    }
}
*/
union() {
difference() {
    union() {
/*join*/
        cube(size = [4,bracket_len/4-2*ear_len,bracket_height], center = true);

/*left side*/
	    translate([0,-(bracket_len/4/2-ear_len/2),0]) {
		    rotate([0,90,0]) {
                vertical();
            }
        }

/*right side*/    
	    translate([0,bracket_len/4/2-ear_len/2,0]) {
		    rotate([0,90,0]) {
                vertical();
            }
        }
         translate([2+5/2,75/2,31/2])
            rotate([0,90,0])
                cylinder(h=5, r1=3, r2=3, center=true);
         translate([2+5/2,-75/2,31/2])
            rotate([0,90,0])
                cylinder(h=5, r1=3, r2=3, center=true);
         translate([2+5/2,-75/2,-31/2])
            rotate([0,90,0])
                cylinder(h=5, r1=3, r2=3, center=true);
         translate([2+5/2,75/2,-31/2])
            rotate([0,90,0])
                cylinder(h=5, r1=3, r2=3, center=true);

    }

    union() {
        cube(size = [10,71.2,25.2], center = true);
        translate([0,75/2,31/2])
            rotate([0,90,0])
                cylinder(h=20, r1=1.25, r2=1.25, center=true);

        translate([0,-75/2,31/2])
            rotate([0,90,0])
                cylinder(h=20, r1=1.25, r2=1.25, center=true);

        translate([0,-75/2,-31/2])
            rotate([0,90,0])
                cylinder(h=20, r1=1.25, r2=1.25, center=true);

        translate([0,75/2,-31/2])
            rotate([0,90,0])
                cylinder(h=20, r1=1.25, r2=1.25, center=true);

    }
}
    /* This section can be moved to the difference section above so that M2.5 screws can be used from the front to the back instead of self tapping from the back */
        translate([-1,75/2,31/2])
            rotate([0,90,0])
                cylinder(h=2, r1=3, r2=3, center=true);
        translate([-1,-75/2,31/2])
            rotate([0,90,0])
                cylinder(h=2, r1=3, r2=3, center=true);
        translate([-1,-75/2,-31/2])
            rotate([0,90,0])
                cylinder(h=2, r1=3, r2=3, center=true);
        translate([-1,75/2,-31/2])
            rotate([0,90,0])
                cylinder(h=2, r1=3, r2=3, center=true);
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
            cube(size = [bracket_height,ear_len,4], center = true);
        }
        union() {
            translate([-vertical_hole_distance/2,0,-5])
                cylinder(h=10, r1=mounting_hole_radius, r2=mounting_hole_radius);

            translate([vertical_hole_distance/2,0,-5])
                cylinder(h=10, r1=mounting_hole_radius, r2=mounting_hole_radius);

        }
    }
}

module vertical2()
{
    difference() {
        union() {
            translate([-30/2,0,-0])
                cube(size = [30,bracket_len/4-2*ear_len-2*4,4], center = true);
            translate([-(85+4)/2,-49/2,-0])
                cube(size = [85+4,10,4], center = true);
            translate([-(85+4)/2, 49/2,-0])
                cube(size = [85+4,10,4], center = true);
        }
        union() {
            translate([-(85-3.5-58),-49/2,-5])
                cylinder(h=10, r1=1.25, r2=1.25);
            translate([-(85-3.5-58),-49/2,0.01])
                cylinder(h=2, r1=3, r2=3);
            translate([-(85-3.5-58),49/2,-5])
                cylinder(h=10, r1=1.25, r2=1.25);
            translate([-(85-3.5-58),49/2,0.01])
                cylinder(h=2, r1=3, r2=3);
            translate([-(85-3.5),-49/2,-5])
                cylinder(h=10, r1=1.25, r2=1.25);
            translate([-(85-3.5),-49/2,0.01])
                cylinder(h=10, r1=3, r2=3);
            translate([-(85-3.5),49/2,-5])
                cylinder(h=10, r1=1.25, r2=1.25);
            translate([-(85-3.5),49/2,0.01])
                cylinder(h=10, r1=3, r2=3);
        }
    }
}
