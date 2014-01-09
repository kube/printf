/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cfeijoo <cfeijoo@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/12/09 03:02:42 by cfeijoo           #+#    #+#             */
/*   Updated: 2013/12/16 03:58:25 by cfeijoo          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

/*
** Load a string var and display it 
*/
static int	display_string()
{
	ft_putstr();

	return (1);
}

/*
** This will check the type passed as argument to format,
** 
** And run appropriate function.
*/
static int	get_next_arg_type(const char **format, va_list ap)
{
	static const char	*current = NULL;
	const char			types_to_check[9][3] = {
		"d", "ld", "f", "lf", "c", "s", "p", "x", 0
	};
	
	if (!current)
		current = format;
	while ((current = ft_strchr(current, '%')))
	{

			{
				// First check 2 letters, then 1 letter

			
			}
			*format = current; 
			// Launch correct function
			return (0);
		
	}
	return (1);
}

int	ft_printf(const char *format, ...)
{
	va_list	ap;
	int		i;

	check_format(format);

	va_start(ap, format);
	while (args && i < MAXARGS)
	{
		ft_putendl("a");
	}
	va_arg();
	va_end(ap);
	(void)format;
	return (0);
}
