public void setup()
{
	size(600, 600);
	//background(0);
}
public void draw()
{
	fractal(300, 600, 300);
}
public void fractal(int x, int y, int len)
{
	if(len <= 30)
		ellipse(x, y, len, len);
	else {
		fractal(x + len, y/2, len/2);
		fractal(x - len, y/2, len/2);
		fractal(x + len, y/2, len/4);
		fractal(x - len, y/2, len/4);

	}
}