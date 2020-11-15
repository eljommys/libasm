/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: marvin <marvin@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/14 17:26:24 by marvin            #+#    #+#             */
/*   Updated: 2020/11/14 17:26:24 by marvin           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>

typedef struct	s_list
{
	void				*data;
	struct s_list		*next;
}				t_list;

int	ft_write(int fd, char *str, int len);
int ft_strlen(char *str);
char *ft_strcpy(char *dst, char *src);
int ft_strcmp(char *s1, char *s2);
int ft_read(int fd, char *buf, int size);
char *ft_strdup(char *str);
int ft_atoi_base(char *str, char *base);
int ft_list_size(t_list *list);
int ft_list_push_front(t_list **begin_list, void *data);
