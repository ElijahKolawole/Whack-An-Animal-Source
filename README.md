


# Whack-An-Animal : A Desktop Game 

<p style = "font-weight: bolder;">This is a text</p>

***Version 1.0.0***

|Loading Game | Game UI      |
|:-----------:|:----------:  |
|![DisplayA][]| ![DisplayB][]|


Code and document details for whack-an-animal users and interested developers. Suggestions, 
and recommendations are welcome.

## Motivation
Whack an animal (W-A-A) is a light weight team-based school game project.

In fulfillment of expectation for STEC 4800 : GGC Technology Ambassador Program, W-A-A was showcased to high school kids at Georgia Gwinnett College Technology S3 Series.

[comment]: #---
## Contributors
 Adefemi Kolawole, May Kamreen, Austin Lomaxx.

[comment]: #---

## Technology and tools

 * Programming Language : *[Processing.js][]* from MIT Lab. You can download a fully free version of processing *[here][]*

---

## Code Snippet
		void setup() { //This is the setUp method that is ran only once in the game to  
		  initiate every other processes in the draw method
		  seconds =0; 
		  minutes =33;
		  randomlyCreateBunnies = false; 
		  textFont = createFont("data.Consolas-48.vlw", 48); //our new font to write text 
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
		  font1 = loadFont("AgencyFB-Bold-48.vlw");
		}


## Acknowledgments
Special thanks to the following faculty members who helped in directing us in this project.
 *  Dr. Xin XU
 *  Dr. Sonal Dekhane



## License & copyright

*© Adefemi Kolawole, May Kamreen, Austin Lomaxx, Georgia Gwinnett College.*

[comment]: # (the following are footnotes and links)

[processing.js]: https://processing.org/  "Processing Homepage"
[here]: https://processing.org/download/  "Processing Download"
[displayA]: https://github.com/ElijahKolawole/Whack_an_animal/blob/master/data/displayA.PNG  "Load Game Image"
[displayB]: https://github.com/ElijahKolawole/Whack_an_animal/blob/master/data/displayB.PNG  "Game UI Image"










