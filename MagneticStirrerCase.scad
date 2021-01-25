// Andre Betz
// github@AndreBetz.de
// Magnetic stirrer case
// Zwieselbrau.de

WandD       =  5;
LuefterH    = 30;
LuefterB    = 92;
LuefterT    = 92;
MagnetH     =  2;

$fn=100;

difference() {
    cube([  LuefterB+2*WandD,
            LuefterT+2*WandD,
            LuefterH+WandD ],
            center = false);
    translate([WandD,WandD,-1])
        cube([  LuefterB,
                LuefterT,
                LuefterH],
                center = false);
}