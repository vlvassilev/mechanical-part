$fn=50*1.0;

union() {
difference() {
difference() {
    cube([20,20,20], center=true);
        cylinder(20+1,3,3,center=true);
        rotate([90,0,0])
            cylinder(20+1,3,3,center=true);
        rotate([0,90,0])
            cylinder(20+1,3,3,center=true);
            
}

union() {
rotate([0,0,0])
    translate([0,0,10-8+0.01])
        cylinder(16,6,6,center=true);
rotate([90,0,0])
    translate([0,0,10-8+0.01])
        cylinder(16,6,6,center=true);

rotate([0,90,0])
    translate([0,0,10-8+0.01])
        cylinder(16,6,6,center=true);
}
/*cone heads*/
union() {
    translate([0,0,-10+4/2])
        cylinder(4+0.1,3,6,center=true);

    rotate([90,0,0])
        translate([0,0,-10+4/2])
            cylinder(4+0.1,3,6,center=true);

    rotate([0,90,0])
        translate([0,0,-10+4/2])
            cylinder(4+0.1,3,6,center=true);

}
}
    translate([4,10,10-3])
        sphere(1);
    translate([-4,10,10-3])
        sphere(1);
    translate([4,10,-10+3])
        sphere(1);
    translate([-4,10,-10+3])
        sphere(1);

    translate([4,10-3,-10])
        sphere(1);
    translate([-4,10-3,-10])
        sphere(1);
    translate([4,-10+3,-10])
        sphere(1);
    translate([-4,-10+3,-10])
        sphere(1);

    translate([-10,10-3, 4])
        sphere(1);
    translate([-10,10-3, -4])
        sphere(1);
    translate([-10,-10+3, 4])
        sphere(1);
    translate([-10,-10+3, -4])
        sphere(1);
}