#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<gdiplus/gdiplusgraphics.h>
int main(){
int gd=0, gm;
initgraph(&gd, &gm, "C:\\turboc3\\bgi");
line(320, 0, 320, 480);
line(0, 240, 640, 240);
int cx=320, cy=240;
for(int i=0; i<=50; i++){
putpixel(cx+50+i, cy-50-i, WHITE);
}
line(cx, cy,cx-100,cy+200);
getch();
return 0;
}