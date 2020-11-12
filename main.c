/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: marvin <marvin@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/10 22:24:20 by marvin            #+#    #+#             */
/*   Updated: 2020/11/10 22:24:20 by marvin           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>

int	ft_write(int fd, char *str, int len);
int ft_strlen(char *str);
char *ft_strcpy(char *dst, char *src);
int ft_strcmp(char *s1, char *s2);
int ft_read(int fd, char *buf, int size);
char *ft_strdup(char *str);

int main(void)
{
	size_t i;
	unsigned int fd;
	char *str;

	str = ft_strdup("hola");
	printf("str = %s\n", str);
	return (0);
}
