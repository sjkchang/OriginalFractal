public void setup()
{
	size(600, 600);
	background(0);
	rectMode(CENTER);
}
public void draw()
{
	fractal(150, 150, 250);
	rectFractal(450, 150, 250);
	rFractal(300, 450, 290);
}
public void fractal(float x, float y, float len)
{
	
		ellipse(x, y, len, len);
		fill(0);
		rect(x,y, len, len/24);
		rect(x, y, len /24, len);
		fill(255);
		rect(x, y, len/5.5, len/5.5);

	if(len > 10)
	{
		fractal(x + ((len/4)+ len/32), y - len/4, len/2.5);
		fractal(x - ((len/4)+ len/32), y + len/4, len/2.5);
		fractal(x + ((len/4)+ len/32), y + len/4, len/2.5);
		fractal(x - ((len/4)+ len/32), y - len/4, len/2.5);


		
	}
}
public void rectFractal(float x, float y, float len)
{
	ellipse(x - len/2, y - len/2, len/6, len/6);
	ellipse(x + len/2, y - len/2, len/6, len/6);
	ellipse(x - len/2, y + len/2, len/6, len/6);
	ellipse(x + len/2, y + len/2, len/6, len/6);

	rect(x, y, len, len);
	fill(0);
	ellipse(x,y, len, len/24);
	ellipse(x, y, len/24, len);
	fill(255);
	ellipse(x, y, len/4.5, len/4.5);
	if(len > 10)
	{
		rectFractal(x + ((len/4)+ len/32), y - ((len/4)+ len/32), len/2.5);
		rectFractal(x - ((len/4)+ len/32), y + ((len/4)+ len/32), len/2.5);
		rectFractal(x + ((len/4)+ len/32), y + ((len/4)+ len/32), len/2.5);
		rectFractal(x - ((len/4)+ len/32), y - ((len/4)+ len/32), len/2.5);
	}
}
public void rFractal(float x, float y, float len) 
{

	ellipse(x, y, len, len);
	fill(0);
	ellipse(x, y, len- 5, len- 5);
	fill(255);
	ellipse(x, y, len/4, len/4);
	fill(0);
	ellipse(x, y, len/4 - 5, len/4 -5);
	rect(x, y + len/8, len/4, len/8);
	rect(x, y, len /48, len/2);
	fill(255);
	if(len > 10)
	{
		rFractal(x - len/2, y, len/2);
		rFractal(x + len/2, y, len/2);
	}	
}
