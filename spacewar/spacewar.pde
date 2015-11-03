// The class name starts with uppercase
class Ship
{
  // Fields!
  float x, y;
  float w;
  float halfW;
  float red=0;
  float green=0;
 
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Ship()
  {
    x = width * 0.5f;
    y = height  * 0.5f;
    w = 50;
    halfW = w * 0.5f;
  }  
  
  void update()
  {
    if (keyPressed)
    {
      if (key == 'w')
      {
        
        y --;
        if(green<255){
          green++;
        }
      }
      if (key == 's')
      {
        y ++;
        if(green>0){
          green--;
        }
      }
      if (key == 'a')
      {
        x --;
        if(red<255){
          red++;
        }
      }
      if (key == 'd')
      {
        x ++;
        if(red>0){
          red--;
        }
      }
      
    }
  }
  
  void render()
  {
    stroke(red, green, 255);
    line(x - halfW, y + halfW, x, y - halfW);
    line(x, y - halfW, x + halfW, y + halfW);
    line(x + halfW, y + halfW, x, y);
    line(x - halfW, y + halfW, x, y);
  }   
}//This branch is GREAT
