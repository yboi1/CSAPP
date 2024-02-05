long func_a(unsigned long x){
    long val = 0;
    while(x != 0){
        val = val ^ x;
        x = x>>1;
    }
    val = val&1;
    return val;

}