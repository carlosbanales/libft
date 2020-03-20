#include "libft.h"

size_t	ft_strnlen(const char *src, size_t maxlen)
{
	size_t	len;


	len = 0;
	while (*src && maxlen > 0)
	{
		src++;
		len++;
		maxlen--;
	}
	return (len);
}
