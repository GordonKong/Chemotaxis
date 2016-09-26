Bacteria [] colony;

void setup()   
 {     
    size(500, 500);
    colony = new Bacteria[500];
    for (int i = 0; i < colony.length; i++)
    {
        colony[i] = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500));
    }
 }   
 void draw()   
 {    
    background(0);
    ellipse(mouseX, mouseY, 30, 30);
for (int i = 0; i < colony.length; i++) 
    {
        colony[i].move();
        colony[i].show();
    }
}  


 class Bacteria    
 {     
    int myX, myY, myColor;
    Bacteria (int x, int y)
    {
        myX = x;
        myY = y;
        myColor = 255;
    }  

    void move() 
    {       
        if (mouseX > myX)
        myX += (int)(Math.random()* 3);
        if (mouseX <= myX)
        myX -= (int)(Math.random()* 3);
        if (mouseY > myY)
        myY += (int)(Math.random()* 3);
        if (mouseY <= myY)
        myY -= (int)(Math.random()* 3);
        
        if(mousePressed)
        {
            if (mouseX > myX )
            myX -= (int)(Math.random()* 9);
            if (mouseX <= myX)
            myX += (int)(Math.random()* 9);
            if (mouseY > myY)
            myY -= (int)(Math.random()* 9);
            if (mouseY <= myY)
            myY += (int)(Math.random()* 9);

        }

    }

    void show() 
    {
        fill( (int)(Math.random()* 255), (int)(Math.random() * 255), (int)(Math.random()*255) );
        ellipse(myX, myY, 10, 10);
    }
 }