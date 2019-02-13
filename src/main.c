#include <stdio.h>
#include <time.h>
#include <memory.h>
#include <stdlib.h>
#include "csvparser.h"


struct jagged
{
	char questionId[25];
	char answerId[25];
	char answerText[10570];
	char answerDate[25];
};

void csvFileImport( char * inFileName, struct jagged * inData, int firstLineHeader );

size_t lineCount( char * inFileName );


/**
 * This program is meant to be boilerplate for adding CSV parsing to another program.
 * @return an exit code, where 0 indicates normal execution.
 */
int main( int argc, char * argv[] )
{
	char * inFileName;
	char tempLine[2112] = "";
	size_t printLength = 2112;
	int firstRowHeader = 1;
	size_t numLines = 0;

	if( argc > 1 )
	{
		/* Any CLA is expected to be the input file name. */
		inFileName = argv[1];
	}
	else
	{
		inFileName = "test0.csv";
	}
	numLines = ( size_t ) lineCount( inFileName );
	if( numLines == 0 )
	{
		return -1;
	}
	struct jagged inData[numLines - firstRowHeader];
	unsigned long fileSize;
	char * fileBuffer;
	FILE * inBinFilePointer;
	if( ( inBinFilePointer = fopen( inFileName, "rb" ) ) == NULL )
	{
		perror( "Error opening input file in binary mode" );
		return -1;
	}
	fseek( inBinFilePointer, 0, SEEK_END );                    /* Seek to end of file. */
	fileSize = ( unsigned long ) ftell( inBinFilePointer );    /* Get the file size in bytes. */
	fseek( inBinFilePointer, 0, SEEK_SET );                    /* Rewind file pointer. */
	fileBuffer = malloc( fileSize + 1 );                       /* Allocate memory for the entire file. */
	fread( fileBuffer, fileSize, 1, inBinFilePointer );        /* Read the entire file into fileBuffer. */
	fclose( inBinFilePointer );                                /* Close the file handle. */

	// Break up fileBuffer, based on '\n', and store in ptr.
	char * ptr = strtok( fileBuffer, "\n" ); //parse at \n
	// While a token was found.
	while( ptr )
	{
//		printf( "%s\n", ptr );
		// Get another token.
		ptr = strtok( NULL, "\n" );
	}

	csvFileImport( inFileName, inData, firstRowHeader );

	for( size_t i = 0; i < numLines - firstRowHeader; ++i )
	{
		snprintf( tempLine, printLength, "%s", inData[i].answerText );
		printf( "%zu: %s\n", i + 1, tempLine );
	}

	snprintf( tempLine, printLength, "\tInput file: \"%s\" had %zu lines (including header).\n", inFileName, numLines );
	printf( "%s", tempLine );

	return 0;
} /* End of main() function. */


/**
 * This function will populate a struct with data from a file.
 * @param inFileName the name of the input file.
 * @param a pointer to the struct that will hold the file data.
 */
void csvFileImport( char * inFileName, struct jagged * inData, int firstLineHeader )
{
	char resultLine[2112] = "";
	size_t printLength = 2112;
	size_t rowCount = 0;

	if( inFileName == NULL )
	{
		return;
	}

/* CSV line read mode */
	snprintf( resultLine, printLength, "Beginning CSV import.\n" );
	printf( "%s", resultLine );

/* Pass in the input file name, the delimiter to use, and a flag indicating if there is a header line. */
	CsvParser * csvParser = CsvParser_new( inFileName, ",", firstLineHeader );

	CsvRow * header;
	CsvRow * row;

/* Grab the header from our CsvParser object. */
	header = CsvParser_getHeader( csvParser );
	if( header == NULL )
	{
		printf( "%s\n", CsvParser_getErrorMessage( csvParser ) );
		return;
	}

	// Get each row.
	while( ( row = CsvParser_getRow( csvParser ) ) )
	{
		char ** rowFields = CsvParser_getFields( row );
		// Get each field from this row.
		for( size_t g = 0; g < CsvParser_getNumFields( row ); g++ )
		{
			switch( g )
			{
				case 0: strcpy( inData[rowCount].questionId, rowFields[g] );
					break;
				case 1: strcpy( inData[rowCount].answerId, rowFields[g] );
					break;
				case 2: strcpy( inData[rowCount].answerText, rowFields[g] );
					break;
				case 3: strcpy( inData[rowCount].answerDate, rowFields[g] );
					break;
				default: break;
			}
		}
		CsvParser_destroy_row( row );
		rowCount++;
	}

	CsvParser_destroy( csvParser );

} /* End of csvFileImport() function. */


size_t lineCount( char * inFileName )
{
	char buffer[1025];
	FILE * inFileHandle;
	size_t lineCount = 0;
	size_t bytes;

	if( inFileName == NULL )
	{
		return 0;
	}
	if( NULL == ( inFileHandle = fopen( inFileName, "r" ) ) )
	{
		perror( inFileName );
		return EXIT_FAILURE;
	}

	while( ( bytes = fread( buffer, 1, sizeof( buffer ) - 1, inFileHandle ) ) )
	{
		for( char * c = buffer; ( c = memchr( c, '\n', bytes - ( c - buffer ) ) ); c++ )
		{
			lineCount++;
		}
	}
	if( ferror( inFileHandle ) )
	{
		perror( inFileName );
		fclose( inFileHandle );
		return EXIT_FAILURE;
	}

	fclose( inFileHandle );
	return lineCount;
} /* End of lineCount() function. */
