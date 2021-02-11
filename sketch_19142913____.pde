float angle=0;
float angle2=0;
float angle3=0;
float angle4=0;
float angle5=0;
float angleDirection=1;
float speed=0.01;
void setup(){
size(600,600,P3D);
camera(-200,-200,200,100,200,0,0,1,0);
}

void draw(){
  
 background(255);
lights();
  if(keyPressed){
    if(key=='a'){
angle += speed * angleDirection;
  if((angle >radians(30) )||(angle < 0)){
angleDirection = - angleDirection;
}
}
    if(key=='b'){
angle2 += speed * angleDirection;
  if((angle2 > radians(40))||(angle2 < 0)){
angleDirection = - angleDirection;
}
}
    if(key=='c'){
  angle3 += 0.06*angleDirection;
  if((angle3 > radians(90))||(angle3 < 0)){
angleDirection = - angleDirection;
}
}
    if(key=='d'){
  angle4 = angle4+180;
}
    if(key=='e'){
  angle5 += speed * angleDirection;
  if((angle5 > radians(90))||(angle5 < 0)){
angleDirection = - angleDirection;
}
}
  }
//l1
translate(200,400,0);
rotateY(angle5);
box(30,100,30);
//s1
translate(0,-35,0);
sphere(26);
rotate(-angle);
//l2
translate(110,0,0);
box(250,30,30);
//s2
translate(110,-30,0);
rotateY(angle2);
//l3
translate(0,0,-60);
box(30,30,150);
//s3
translate(0,30,-60);
rotateY(angle2*3/2);
//l4
translate(0,0,-45);
box(30,30,120);
//s4
translate(0,0,-45);
rotateX(-angle3);
//l5
translate(0,30,0);
box(20,80,20);
//s5
translate(0,30,0);
rotateY(angle4);
//l6
box(30);
}
