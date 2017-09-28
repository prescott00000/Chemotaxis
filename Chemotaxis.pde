Bacteria[] bob= new Bacteria [13] ;
 void setup()   
 {     
 	size (600,600);
 for (int i=0; i<bob.length; i++)
   {
     bob [i]= new Bacteria ();
   }
 
 }   
 void draw()   
 {    
 	background (0);
 
 for (int i=0; i< bob.length; i++)
   {
     bob [i]. Walker();
     bob [i]. Show ();
   }
 }
   
 class Bacteria    
 {
   int myX, myY, myZ;
   Bacteria()
 {     
 	myX=250;
  myY= 250;
  myZ= (int)(Math.random()*255)+1;
 }
 void Walker ()
 { 
   myX= myX+(int)((Math.random ()*21)-10); 
   myY= myY+(int)((Math.random ()*21)-10);
   if (mouseX>myX)
   myX= myX+(int)((Math.random ()*21)-8); 
   else
   myX= myX+(int)((Math.random ()*21)-12); 
   
   if (mouseY>myY)
   myY= myY+(int)((Math.random ()*21)-8);
   else 
   myY= myY+(int)((Math.random ()*21)-12);
     
 }
  void Show ()
  {
    fill (myZ, 130, 90);
    ellipse (myX, myY, 10, 10);
  }
 }
 

 
 