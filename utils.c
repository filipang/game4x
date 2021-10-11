/*******************************************************************************
* 
* FILENAME : utils.c
*
* DESCRIPTION :
*       This is a short game development project which
*       will eventually be re-written in Assembly to be handed in as college
*       homework. 
*
* AUTHORS : filipang, ciobanuradu           
* 
* START DATE :    2/10/2021
*
*******************************************************************************/

// Loads entire file into a char* with malloc
// NOTE(filip): This needs to be freed
char* loadFile(const char* file_name)
{
	char *dest = NULL;
	FILE *fp = fopen(file_name, "r");
	if (fp != NULL) {
		// Go to the end of the file. 
		if (fseek(fp, 0L, SEEK_END) == 0) {
			// Get the size of the file. 
			long bufsize = ftell(fp);
			if (bufsize == -1) {   }

			// Allocate our buffer to that size. 
			dest = malloc(sizeof(char) * (bufsize + 1));

			// Go back to the start of the file. 
			if (fseek(fp, 0L, SEEK_SET) != 0) { }

			//Read the entire file into memory. 
			size_t newLen = fread(dest, sizeof(char), bufsize, fp);
			if ( ferror( fp ) != 0 ) {
				fputs("Error reading file", stderr);
			} else {
				dest[newLen++] = '\0'; // Just to be safe. 
			}
		}
		fclose(fp);
	}
	return dest;
}

// Finds smallest power of two greater than n
int nextPowerOf2(int n)
{
    int k = 1;
    while (k < n) {
        k = k << 1;
    }
    return k;
}

void hexGridToViewport(int grid_x, int grid_y, 
					   float offset_x, float offset_y,
					   float hex_size,
					   float *viewport_x, float *viewport_y)
{
		*viewport_x = offset_x + (grid_x + grid_y * 0.5) * sqrt(3) * hex_size;
		*viewport_y = offset_y + grid_y * hex_size * 3/2;	
}

int calculateRotateIndex(int position_x, int position_y, int cursor_x, int cursor_y)
{
	float result_y = cursor_y - position_y;
	float result_x = cursor_x - position_x;
	result_x = result_x + result_y * 0.5;
	result_y = result_y * sqrt(3) * 0.5;
	result_ratio = result_y / result_x;
	if(result_x == 0)
	{
		if(result_y >= 0)
			return 0;
		else
			return 3;
	}
	else if(result_ratio >= 0.5 && result_y >= 0)
		return 0;
	else if(result_ratio < 0.5 && result_ratio >= -0.5 && result_x >= 0)
		return 1;
	else if(result_ratio < -0.5 && result_x >= 0)
		return 2;
	else if(result_ratio >= 0.5 && result_y <= 0)
		return 3;
	else if(result_ratio < 0.5 && result_ratio >= -0.5 && result_x <= 0)
		return 4;
	else if(result_ratio < -0.5 && result_x < 0)
		return 5;
}

int hexDistance(int x1, int y1, int x2, int y2)
{
	return (abs(x1 - x2) + 
		abs(y1 - y2) +
		abs(x1 + y1 - x2 - y2)) / 2;
}
