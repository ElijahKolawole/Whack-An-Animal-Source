    //WELCOME : THE GOAL OF THE GAME IS TO HIT THE BUNNY WITH THE HAMMER RIGHT AT THE POINT IT COMES ON SCREEN
    //THE PROGRAM RANDOMLY GENERATES THE LOCATION OF YOUR BUNNY FOR YOU, AND YOU HAVE HIT IT RIGHT THEN TO GET A SCORE, YOU LOSE A POINT OTHERWISE
    //YOU HAVE SIXTY SECONDS TO PLAY , YOU CAN PLAY AS MANY TIMES AS YOU WANT: REMEMBER TO SWAP WITH YOUR PARTNER(S) AND SEE WHO GETS MOST HITS. LETS BEGIN....
    /**************** Declare Variables ************************************************/
    //This is the variable to generate the specific font we want for the displayed texts in this game
    boolean displayTimer; int seconds; int minutes;Boolean randomlyCreateBunnies; Boolean drawBunny; Boolean scoreBunny; int start; PFont textFont; float randomFloat ; int randomInteger; //this is the variable for the timer
    int startAtProgramBegin;int mouseClicked;
    int score;//this counts the score, adding and subtracting as you hit or miss the bunny
    PImage background, hammer, goodBunny;//variable names for images used
    /***************Generate six hole objects on the console****************************/
    //This section created six hole onject at various locations from the Hole class--The goal here is to specify the specific location we want the hole to appear.
    //For instance 100,100,60.60 means  create hole x(100) , y(100), width(60), and height(60) and so on...
    Holes hole1a = new Holes (100, 550, 60,60);//hole1
    Holes hole1b= new Holes (300, 550, 60,60);//hole2
    Holes hole1c = new Holes (500, 550, 60,60);//hole3
    Holes hole2a = new Holes (100, 750, 60,60);//hole4
    Holes hole2b= new Holes (300, 750, 60,60);//hole5
    Holes hole2c = new Holes (500, 750, 60,60);//hole6
    //=================================================//BUNNY OBJECTS
    Bunny showText = new Bunny();//this bunny object is used to display the text at the beginning of the game
  /**************** Setup() Function *****************/
    void setup(){ //This is the setUp method that is ran only once in the game to initiate every other processes in the draw method
    seconds =0; minutes =33;randomlyCreateBunnies = false; textFont = createFont("data.Consolas-48.vlw" , 48); //our new font to write text 
    //drawBunny = false;
    scoreBunny = false;
    score = 0; //initial value of score
    ArrayList holeArray =  new ArrayList<Holes>(); //This arrayList stores the six hole objects, so we can create the six circles from the same (1) Hole object instead of creating six different circles
    holeArray.add(hole1a);//adds hole1 to the ArrayList, name holeArray
    holeArray.add(hole1b);//adds hole2 to the ArrayList
    holeArray.add(hole1c);//adds hole3 to the ArrayList
    holeArray.add(hole2a);//adds hole4 to the ArrayList
    holeArray.add(hole2b);//adds hole5 to the ArrayList
    holeArray.add(hole1c);//adds hole6 to the ArrayList
    start=3;
    mouseClicked =0;//initial value of mouseClicked
  
    size (594, 842);//The width and heigth of the game window
   
    //frameRate(250);//the rate/speed with which the images are displayed when the game is run.
    background =  loadImage ("background.png");//stores the background  image into background variable
    goodBunny = loadImage("goodBunny.png");//stores a bunny image into the goodBunny variable
    goodBunny.resize(85, 85);//resize the bunny image to specified width and heigth
    hammer = loadImage("hammer.png");//stores an hammer image into hammer variable
    background.resize(594, 842);//resizes the background image
    }
    /**************** draw() Function *****************/
    void draw (){//this method runs the recurring events in the game over and over again. 
   
    
     if (mouseClicked <=0){//immediately you click play, mouse press is at 0
      background (  #8F00FF,0.2);//set back color and read welcome text
       fill(0);//make the text color black
     textFont(textFont);
     textAlign(LEFT);
      textSize(28);//text size
      text ("WELCOME TO WHACK-AN-ANIMAL ", 45, 90, 650  );//welcome text 1
      textSize(30);
      text ("To Begin: Press mouse twice" , 67, 150, 650  );//welcome text 2
      fill(240);
      text ("INSTRUCTIONS:" ,160, 250, 650  );//instructions
      textSize(23);
      text ("Your goal is to hit the bunny at is appears on " ,60, 300, 650  );//instruction
      text ("on the screen. Your score increases whenever " ,60, 340, 650  );//instruction
      text ("you hit the bunny at the exact time it appears." ,60, 380, 650  );//instruction
      text ("Your score remains the same if otherwise." ,60, 420, 650  );//instruction
      text ("You & your partner get  30:00 Timer-Counts each." ,60, 460, 650  );//instruction
      text ("Yor turn ends when the timer reads 00:00." ,60, 500, 650  );//instruction
      text ("After 60:00 Timer-Counts , a winner emerges" ,60, 540, 650  );//instruction
      fill(  #FFFF33);
      textSize(35);//new text size
      fill(240);
      text ("HAVE FUN!!!" ,180, 660, 650  );//last text to display before play
    }
     else if (mouseClicked > 0){
     image (background, 0,0);//new  background image
     background.resize(594, 842);//resizes the new background to fit window
     hole1a.changeColor();//the following lines creates the holes for the bunny object to placed at and changes the color of the holes as well.
     hole1a.create();//this is done by calling the create() and the changeColor method from the Hole class.
     hole1b.changeColor();
     hole1b.create();
     hole1c.changeColor();
     hole1c.create();
     hole2a.changeColor();
     hole2a.create();
     hole2b.changeColor();
     hole2b.create();
     hole2c.changeColor();
     hole2c.create();
     ellipseMode(RADIUS);//this control the dimensions of the hole created 
     textFont(textFont);
      textSize(20);    //text size 
      fill(20);//text color
    //  text("Timer :  ", 20, 25); //Timer Text In Game         
      text("Score :  ", 270, 25); //Score Text In Game
     // //text(time, 80, 25, 650);//timer integer value countdown
      text(score, 338, 25, 650);//score integer value
 /*****************************PrintLine Function***************************///printing method values for debugging purposes
      
        println("Seconds :" + seconds +" & minutes : " + minutes + " & score : " + score +"& randomInteger : " + randomInteger );
       
       println("mousePressed : " + mousePressed + " & start : " + start);
     
        println("mouseX : " + mouseX + " : " + "mouseY : " +mouseY + " & mouseClicked : " + mouseClicked );
//********************Timer Draw********************************************//
        if ((start <=3)&&(start >= 0)){
      delay(600);
          stroke(5);
          fill(255);
          textSize(120);
        text(start, width/2, height/2);
        start--;
        }
      
        if ((start ==-1)&& ((seconds <=30))) {
      
        
           fill(0);
         textSize(20);
        text("Timer:=  " + minutes+ " : " + seconds, 20, 25);
         seconds= seconds+1;
      
        
        }
        else 
{
minutes = minutes -1;
seconds = 0;

        }

/*************************Generate Random values to control Bunny Object********************/

   if( (start ==-1)&&(minutes>=0)&&(minutes<=30)){
    randomlyCreateBunnies = true;
    
   
    }else
    randomlyCreateBunnies = false;
  frameRate(2000);
  delay(190);
   
            randomFloat = random(7);//generate random float value from 0 - 7
          for ( float i = randomFloat; i <= 48; i++) {//this for loop continuously converts the float to int and then created the bunny according to the value it generates
          
          randomInteger =int(randomFloat);//convert the float value(2.4587)value back to integers(2)
        
      if (randomInteger ==1){//If statement to control random creation of bunny

 
     drawABunny(50, 410);  
 }
      else if (randomInteger == 2){

       drawABunny(250, 410); 
  }
      else if (randomInteger == 3){
  
       drawABunny(450, 410); 
       }
      else if (randomInteger == 4){
   
      drawABunny(50, 610); 
      }
      else if (randomInteger == 5){
  
      drawABunny(250, 610); 
      }
       else  {

     drawABunny(450, 610); 
      }
          }
 }

if ((minutes ==0)&&(seconds ==0)){//this terminates the game and prints game over and your score
      background (  #8F00FF,0.2);//set back. color and read welcome text
  fill(240);//make the text color black
     textFont(textFont);
     textAlign(LEFT);
      textSize(40);//text size
      text ("GAME OVER !!! ", 170, 150, 650  );//Game over  text 1
      textSize(30);
      text ("Your Scored:"  + score + " points " ,160, 220, 650  );//instructions
    noLoop();
  
 }
 
  if(mousePressed){
 
 }
   
    hammer.resize(50,50); //rezize the hammer image
    image(hammer, mouseX, mouseY);//use hammer as mouse control

        }//End of draw() Method
     
         void drawABunny(float x, float y){
     if ((randomlyCreateBunnies)&&(drawBunny = true)){
       image (goodBunny, x ,y );
         }
      
                 }

    //=========================================================SCORING SYSTEM
    void mouseClicked(){
    mouseClicked++;
     scoreSystem2(40,130,410,510);
    scoreSystem2(240,330,410,510);
    scoreSystem2(440,530,410,510);
    scoreSystem2(40,130,610,710);
    scoreSystem2(240,330,610,710);
    scoreSystem2(450,530,610,710);
    }

  void scoreSystem2( int a, int b, int c, int d){
 
if((start < 1)&&((mouseX >= a)&&(mouseX <= b))&&((mouseY >=c)&&(mouseY<=d ))){
   score = score + 1;}
 else {
score = 0 + score;}
   }


void scoring(int a, int b, int c, int d){
  if(( drawBunny = true)&& ((mouseX >= a)||(mouseX <= b)&&(mouseY >=c)||(mouseY<=d ))){
  score = score + 1;
    }
    else {
    score = 0 + score;}
}
/**************** Class Bunny *****************/
    class Bunny  {
     private String name;

     private int x;
     private int y;
     Bunny(){
     }
     Bunny(String name, String type, int x, int y){
      this.x=x;
       this.y=y;
       this.name = name;
 
     this.name = name ;
     }
    public int getXpos(){
    return x;
    }
    public int getYpos(){
    return y;
    }
     public void setName(String name){
     this.name = name;
     }
      public void setType(String type){
     }
     public String getName(){
     return name;
     }

     
    }
     
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