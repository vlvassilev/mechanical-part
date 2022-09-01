$fn=50*1.0;


cube([20,20,5.5], center=true);
rotate([0,0,0])
    translate([-10,-10,2.75])
        plug();

rotate([00,00,90])
    translate([-10,-10,2.75])
        plug();

rotate([0,0,180])
    translate([-10,10,20-2.75])
        rotate([-90,0,0])
            plug();

rotate([00,00,270])
    translate([-10,10,20-2.75])
        rotate([-90,0,0])
            plug();

module plug(height)
{
    difference() {
        linear_extrude(height=14.5, center=false, convexity=10)
            import(file="vertical.dxf");
        rotate([-90,0,0])
            translate([10,-10,20-5.5/2])
            cylinder(h=5.5+1,r=2, center=true);
    }
}
