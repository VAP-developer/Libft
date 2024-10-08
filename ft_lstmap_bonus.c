/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vicalons <vicalons@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/03 10:57:41 by vicalons          #+#    #+#             */
/*   Updated: 2024/10/08 11:15:51 by vicalons         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*new_list;
	t_list	*nod;
	t_list	*buffer;

	nod = lst;
	if (!f || !lst || !del)
		return (0);
	new_list = malloc(sizeof(t_list));
	if (!new_list)
		return (0);
	buffer = new_list;
	while (nod)
	{
		buffer -> content = f(nod -> content);
		if (!(nod -> next))
			buffer -> next = NULL;
		else
			buffer -> next = malloc(sizeof(t_list));
		if (!(buffer -> next))
			ft_lstclear_bonus(&nod, del);
		nod = nod -> next;
		buffer = buffer -> next;
	}
	return (new_list);
}
