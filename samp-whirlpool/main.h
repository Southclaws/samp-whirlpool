#pragma once

typedef void (* logprintf_t)(char *, ...);

#ifndef CHECK_PARAMS
	#define CHECK_PARAMS(m,n)                                                                                 \
		do                                                                                                    \
		{                                                                                                     \
			if (params[0] != (m * 4))                                                                         \
			{                                                                                                 \
				logprintf("WP Error: Incorrect parameter count on \"" n "\", %d != %d\n", m, params[0] / 4); \
				return 0;                                                                                     \
			}                                                                                                 \
		}                                                                                                     \
		while (0)
#endif
