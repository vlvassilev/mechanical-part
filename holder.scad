$fn=50*1.0;

include <lego_beam.scad>;

//hook();

union () {
    translate([0,0,-50/2+1])
        box();
    front_panel();
    rotate([0,0,-90])translate([ (37/2-1-1.5/2),(51/2-3/2),0])hook_centered(50);
    rotate([0,0,-90])translate([(37/2-1-1.5/2),-(51/2-3/2),0])hook_centered(50);
    rotate([0,0,90])translate([(37/2-1-1.5/2),-(51/2-3/2),0])hook_centered(50);
    rotate([0,0,90])translate([(37/2-1-1.5/2),(51/2-3/2),0])hook_centered(50);
}

module hook_centered(len)
{
    rotate([0,0,0])translate([-1.5/2,-3/2,-50+1.5-4])hook(len);
}

module hook(len)
{
    cube(size = [1.5,3,len+2], center = false);
    translate([3.5/2,3/2,-3/2])
    difference() {
        cube(size = [3.5,3,3], center = true);
        union() {

                    translate([2.5,0,0])
                        rotate([0,-45,0])
                            cube(size = [8,3.1,3], center = true);

        }
    }
}

module box()
{
    difference() {
        union() {
            cube(size = [87,37,50], center = true);
            cube(size = [87+2+12,37+2,50-1.5*2], center = true);
        }
        cube(size = [87-2,37-2,50+1.5*2], center = true);
        translate([87/2,0,1.5])
            cube(size = [12,37-2,50-1.5*2], center = true);
        translate([-87/2,0,1.5])
            cube(size = [12,37-2,50-1.5*2], center = true);

        translate([-87/2,0,10])
            rotate([0,90,0])
                cube(size = [20,27,20], center = true);
        translate([87/2,0,-22])
            rotate([0,90,0])
                cube(size = [10,27,10], center = true);
    }
}



module front_panel()
{
    difference() {
        union() {
            cube(size = [87+2+12,37+2,2], center = true);
        }
        union() {
            translate([35,19.05/2,-5])
                cylinder(h=10, r1=4.1, r2=4.1);
            translate([35,-19.05/2,-5])
                cylinder(h=10, r1=4.1, r2=4.1);
        }
    }
}

