#include <stdio.h>

struct person {
  char *name;
  long age;
};

struct minmax {
  long min;
  long max;
};

struct person arr[] = {{"Augusta Wind", 32}, {"Anne Teak", 85}, {"Billy Rubin", 15}, {"Paige Turner", 20}};

int set_minmax(struct person *a, unsigned long size, struct minmax *mm);

int main() {
	struct minmax mm;
	set_minmax(arr, sizeof(arr)/sizeof(arr[0]), &mm);
	printf("%ld %ld\n", mm.min, mm.max);
	return 0;
}
