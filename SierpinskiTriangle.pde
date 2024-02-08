public void setup()
{
  size(1000,1000);

}
public void draw()
{
  sierpinski(100,900,800);
}

public void sierpinski(int x, int y, int len) 
{

  if (len<=20){
    fill(58,224,250);
    rect(x-2,y,len,len);
    fill(234,13,208);
    ellipse(x,y,len,len);
    fill(99,252,136);
    triangle(x+1,y,(x+(x+len))/2,y-len,(x+len),y);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
}
}



