void decode1(long *xp, long *yp, long *zp){
    long a = *xp;
    long b = *yp;
    long c = *zp;

    *yp = a;
    *zp = b;
    *xp = c;

    return;
}


