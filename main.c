/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cfeijoo <cfeijoo@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/12/09 03:07:13 by cfeijoo           #+#    #+#             */
/*   Updated: 2013/12/09 14:13:13 by cfeijoo          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stdio.h>

int	main(void)
{
	ft_putendl("Beginning Test\n");

	printf("%s", "HELLO WORLD\n");
	ft_printf("%s", "HELLO WORLD\n");
	return (0);
}
