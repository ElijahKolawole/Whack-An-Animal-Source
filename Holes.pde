     
    /**************** Class Holes *****************/
    class Holes { 
      float xpos, ypos, width, height;
      Holes(float a, float b, float c, float d){  
        xpos = a;  ypos = b;width = c; height = d;
      }
      void create(){
      ellipse(xpos,ypos,width,height);
      } 
   
     /*********************changeColor Method()*************************/
       void changeColor(){
       color c = color(255, 204, 0, 100);  // Define color 'c'
  
    fill(c);  // Use color variable 'c' as fill color
    noStroke();
    }
    }
