/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pstringe <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/19 09:40:33 by pstringe          #+#    #+#             */
/*   Updated: 2018/06/13 17:25:18 by pstringe         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "ft_printf.h"

void 	s_test(char *name, char *str)
{
	printf("%s\n", name);
	printf("A:%s\n", str);
	ft_printf("B:%s\n", str);
}

int 	main(int argc, char **argv)
{
	int 	i;
	char	*str;

	if (argc >= 2)
	{
		i = 0;
		while (++i < argc)
		{
			str = argv[i];
			printf("A ret: %d\n", printf("A res: @moulitest: %5.2s is a string\n", ""));
			printf("B ret: %d\n", ft_printf("B res: @moulitest: %5.2s is a string\n", ""));
		}
	}
	return (0);
}
