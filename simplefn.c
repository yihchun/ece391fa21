#include <stdio.h>

void mystrcpy(char *dst, const char *src) {
	while (*(dst++) = *(src++)) ;
}

int main() {
	char buf[16];
	mystrcpy(buf, "heljidfjaoifjoiasjfosvnaihieuarhieuowhrifudshaijhafiueshriuahwrifadsn");
}
