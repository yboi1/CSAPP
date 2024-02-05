#include <stdio.h>
#include <string.h>
#include <stdlib.h>
char *gets(char *s)
{
    int c;
    char *dest = s;
    while((c = getchar()) != '\n' && c != EOF)
        *(dest++) = c;
    if(c==EOF &&dest ==s)
        return NULL;
    *dest++ = '\0';
    return s;
}
void echo()
{
    char buf[8];
    gets(buf);
    puts(buf);
}
char *get_line()
{
    char buf[4];
    char *result;
    gets(buf);
    result = (char *)malloc(strlen(buf));
    strcpy(result, buf);
    return result;
}

int main()
{
    printf("%s", get_line());
}