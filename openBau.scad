
segments=100;
clearance_fit = 0.1;
overlap_FIXER = 1;

module washer(outer_r, inner_r, height){
    difference() {
        cylinder(r = outer_r, h = height, $fn = segments);
        translate([0,0,-overlap_FIXER])
            cylinder(r = inner_r, h = height+overlap_FIXER*2, $fn = segments);
    }
}

// Washer_1
washer(20, 12.5, 10);

// Sphere_1
translate([0,0,25])
sphere(r = 20, $fn = segments);