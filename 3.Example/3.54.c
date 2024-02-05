double funct2(double w, int x, float y, long z)
{
    float t = (float)x;
    y = t*y;
    double t2 = (double)y;
    double t3 = (double)z;
    w = w/t3;
    return y-w;
}