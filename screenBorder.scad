include <variables.scad>
include <lib/modules.scad>
border = 1;
module frame(){
  rotate([90,0,0]){
    difference(){
      union(){
        translate([0,0-TopDepth/2,0]){
          cube([Width,TopDepth,Height],true);
          translate([0,0-border,0]){
            cube([Width-border/2,TopDepth,Height-border/2],true);
          }
        }
      }
      translate([0,0-TopDepth/2-.9,0])
      cube([Width-border*2,TopDepth+border,Height-border*2],true);
      screen(screenWidth,screenHeight,screenTabs);
    }
  }
}
difference(){
  union(){
    frame();
    rotate([180,0,0])
      translate([0,0,border/2])
        screenPosts(screenW=screenWidth+2,screenH=screenHeight+2,id=1,h=1); 
  }
  if(antSlot1){
    rotate([-90,90,0])
    translate([border*2,-(Width/2-antHeight),Height/2-border*(3/2)])
      antHole(d=2,border=border,notch=1.5);
  }
  if(antSlot2){
  rotate([0,90,0])
    translate([border*2,Height/2-antHeight,Width/2-border*(3/2)])
      antHole(d=2,border=border,notch=1.5);
  }
  if(antSlot4){
    rotate([-90,90,0])
    translate([border*2,(Width/2-antHeight),Height/2-border*(3/2)])
      antHole(d=2,border=border,notch=1.5);
  }
  if(antSlot5){
  rotate([0,-90,0])
    translate([-border*2,Height/2-antHeight,Width/2-border*(3/2)])
      rotate([180,180,0])
      antHole(d=2,border=border,notch=1.5);
  }
}
