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
int ft_atoi_base(char *str, char *base);

typedef struct	s_list
{
	void				*data;
	struct t_list		*next;
}				t_list;

int main(void)
{
	int d;
	size_t i;
	unsigned int fd;
	char str;

	/*i = 5;
	fd = open("../text.txt", O_WRONLY | O_CREAT);
	d = ft_read(7, str, 5);
	printf("%s, i = %ld\n", str, i);
	d = read(7, str, 5);
	printf("%s, i = %ld\n", str, i);
	close(fd);*/

	//printf("atoi = %d\n", ft_atoi_base("   -183 21", "0123456789"));



	return (0);
}
