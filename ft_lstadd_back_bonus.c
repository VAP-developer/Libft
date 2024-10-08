/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd_back.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vicalons <vicalons@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/01 14:44:38 by vicalons          #+#    #+#             */
/*   Updated: 2024/10/03 11:07:01 by vicalons         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstadd_back(t_list **lst, t_list *new)
{
	t_list	*lstlast;

	lstlast = *lst;
	if (!*lst)
		*lst = new;
	else
	{
		while (lstlast -> next)
			lstlast = lstlast -> next;
		lstlast -> next = new;
	}
}
