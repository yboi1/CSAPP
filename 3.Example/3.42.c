struct ELE{
    long v;
    struct ELE* p;
};
long fun(struct ELE* ptr){
    long sum = 0;
    while(ptr){
        sum += ptr->v;
        ptr = ptr->p;
    }
    return sum;
}