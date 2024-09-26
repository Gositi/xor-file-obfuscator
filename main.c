#include <stdio.h>

int main (int argc, char* argv[]) {
	//Ensure we have the correct number of arguments
	if (argc != 3) {
		fprintf (stderr, "Invalid argument count\n");
		return 1;
	}

	//Open files
	FILE* r = fopen (argv[1], "rb");
	FILE* w = fopen (argv[2], "wb");
	
	int byte;
	int xor = 0xaa;
	while ((byte = fgetc (r)) != EOF) {
		fputc (byte ^ xor, w);
	}

	return 0;
}
