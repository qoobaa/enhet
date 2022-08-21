$fn=50;

module element() {
  difference() {
    translate([-15.5/2, 0, 0]) cube([15.5, 25, 15.5]);

    for (i = [0:15]) {
      translate([0, i, 0])
        scale([1 - i/170, 1, 1])
        rotate_extrude()
        translate([-7, 2.6, 0])
        import("eket.svg");
    }
  }
}

element();
translate([0, 50, 0]) rotate([0, 0, 180]) element();
