#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void testcase(int ts) {
     char buf[10];
     
     char *s = (char *) malloc(ts * sizeof(char));
     for(int i=0; i < ts; i++) s[i] = i + '0';
     
     if (s[0]=='a') printf("%d\n", s[ts-1]);
     
     fscanf(stdin, "%s", s); //'s' marked as tainted
     memcpy(buf, s, strlen(s)); // sink
     printf("%s\n", buf);
 }
 
 int main(int argc, char **argv) {
     int size;
     scanf("%d", &size); //'size' marked as tainted
     testcase(size);
     
     return 0;
 }
