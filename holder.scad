    $fn=50*1.0;

include <lego_beam.scad>;


bracket_len=486.2; // length of rack equipment mounting bracket 19 inch
bracket_height = 44; // actually 44.45 mm 1.75 inch
body_len=449; // max length of equipment body
ear_len=(bracket_len-body_len)/2; //18.6


joint();




horizontal_offset_from_end = 0.625*25.4/2; //0.625 inch is the side rail and the hole is in the middle
vertical_hole_distance = 31.75;
mounting_hole_radius = 3.55;

module joint()
{
    difference() {
        cube(size = [bracket_height,ear_len*2,4], center = true);
 
        union() {
            translate([vertical_hole_distance/2, horizontal_offset_from_end,-4])
                cylinder(h=10, r1=mounting_hole_radius, r2=mounting_hole_radius);
            translate([-vertical_hole_distance/2, horizontal_offset_from_end,-4])
                cylinder(h=10, r1=mounting_hole_radius, r2=mounting_hole_radius);
            translate([-vertical_hole_distance/2,-(horizontal_offset_from_end),-4])
                cylinder(h=10, r1=mounting_hole_radius, r2=mounting_hole_radius);
            translate([vertical_hole_distance/2,-(horizontal_offset_from_end),-4])
                cylinder(h=10, r1=mounting_hole_radius, r2=mounting_hole_radius);
        }
    }
}
