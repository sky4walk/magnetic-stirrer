// Andre Betz
// github@AndreBetz.de
// Magnetic stirrer case
// Zwieselbrau.de

WandD           =  5;
LuefterH        = 25.5;
LuefterB        = 92.5;
LuefterT        = 92.5;
MagnetH         =  6;
PotiB           = 20;
DistHolderBT    = 10;
ConnDC_D1       =  8;
ConnDC_D2       = 13;
ConnP_D1        =  8;
ConnP_D2        = 13;

$fn=100;

difference() {
    cube([  LuefterB+PotiB+2*WandD,
            LuefterT+2*WandD,
            LuefterH+DistHolderBT+WandD ],
            center = false);
    translate([WandD,WandD,-1])
        cube([  LuefterB+PotiB,
                LuefterT,
                LuefterH+DistHolderBT],
                center = false);
    translate([LuefterB+WandD+PotiB/2,WandD+1,(LuefterH+DistHolderBT)/2])
        rotate(a=[90,0,0])
            cylinder(h=WandD+2,r=ConnP_D1/2,center=false);
    translate([LuefterB+WandD+PotiB/2,LuefterT+WandD*2+1,(LuefterH+DistHolderBT)/2])
        rotate(a=[90,0,0])
            cylinder(h=WandD+2,r=ConnDC_D1/2,center=false);
}
translate([WandD,WandD,LuefterH])
    cube([  DistHolderBT,
            DistHolderBT,
            MagnetH ],
            center = false);
translate([LuefterB+WandD-DistHolderBT,WandD,LuefterH])
    cube([  DistHolderBT,
            DistHolderBT,
            MagnetH ],
            center = false);

translate([WandD,LuefterT+WandD-DistHolderBT,LuefterH])
    cube([  DistHolderBT,
            DistHolderBT,
            MagnetH ],
            center = false);
translate([LuefterB+WandD-DistHolderBT,LuefterT+WandD-DistHolderBT,LuefterH])
    cube([  DistHolderBT,
            DistHolderBT,
            MagnetH ],
            center = false);
