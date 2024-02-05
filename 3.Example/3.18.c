long test(long x, long y, long z){
    long val = x + y + z;
    if(-3 > x){
        if(2 <= x){
            val = x * z;
        }
        else{
            val = y * z;
        }       
        
    }
    else if (z == y){
        val = x * y;
    }
    return val;
}

long test(long x, long y, long z){
    long val = x + y + z;
    if(x<-3){
        if(y<z){
            val = x * y;
        } else {
            val = y * z;
        }
    } else if(x>2){
        val = x * z;
    }
    return val;
}