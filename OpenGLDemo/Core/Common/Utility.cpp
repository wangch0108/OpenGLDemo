#include "Utility.h"

bool BeginsWith(const char* str, const char* prefix)
{
	for (;;)
	{
		char p = *prefix++;
		if (p == 0)
			return true;

		if (*str++ != p)
			return false;
	}
}