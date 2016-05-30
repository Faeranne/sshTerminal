res=100;
if(resolution=="dev"){
  res=5;
}
if(resolution=="rough"){
  res=30;
}
if(resolution=="prod"){
  res=100;
}
module screen(w,h,tabs){
  cube([w,2,h],true);
}
module screwPost(id,od,ih,oh){
  difference(){
    cylinder(d=od,h=oh); 
    translate([0,0,oh-ih])
    cylinder(d=id,h=ih+0.1);
  }
}
module screenPosts(screenW,screenH,id,h){
  translate([-screenW/2,-screenH/2,0]){
    screwPost(id=id,ih=h-0.5,od=id+0.5,oh=h,$fn=res);
  }
  translate([screenW/2,-screenH/2,0]){
    screwPost(id=id,ih=h-0.5,od=id+0.5,oh=h,$fn=res);
  }
  translate([-screenW/2,screenH/2,0]){
    screwPost(id=id,ih=h-0.5,od=id+0.5,oh=h,$fn=res);
  }
  translate([screenW/2,screenH/2,0]){
    screwPost(id=id,ih=h-0.5,od=id+0.5,oh=h,$fn=res);
  }
}

module antHole(d,notch,border){
  difference(){
    cylinder(d=2,h=border*3,$fn=res);
    translate([notch,0,border*(3/2)])
      cube([d,d,border*3],true);
  }
}
