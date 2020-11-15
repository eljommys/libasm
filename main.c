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

#include "libasm.h"

int main(void)
{
	int fd;
	int i;
	size_t d;
	char *str;
	char *dest;

	//ft_strlen =================================================
	str = "hola";
	i = ft_strlen(str);
	printf("ft_strlen de %s = %d\n", str, i);

	//ft_strcpy ==================================================
	dest = (char *)malloc(sizeof(char) * (i + 1));
	dest[i] = 0;
	printf("ft_strcpy -> dest = %s,  src = %s\n\n", ft_strcpy(dest, str), str);
	free(dest);

	//ft_strcmp =================================================
	printf("ft_strcmp(hola, hola) = %d\n", ft_strcmp("hola", "hola"));
	printf("ft_strcmp(hola, hols) = %d\n", ft_strcmp("hola", "hols"));
	printf("ft_strcmp(hols, hola) = %d\n", ft_strcmp("hols", "hola"));

	//ft_write ==================================================
	fd = open("./example.txt", O_WRONLY | O_CREAT | O_APPEND);
	d = ft_write(fd, "esto es un ejemplo\n", 19);
	printf("ft_write = %ld\n", d);
	d = write(fd, " y esto es otro\n\n", 17);
	printf("write = %ld\n\n", d);
	close(fd);

	//ft_read ========================================================
	i = 5;
	dest = (char *)malloc(sizeof(char) * (i + 1));
	dest[i] = 0;
	fd = open("./example.txt", O_RDONLY);
	d = ft_read(fd, dest, i);
	printf("%s, ft_read = %ld\n", dest, d);
	d = read(fd, dest, i);
	printf("%s, read = %ld\n\n", dest, d);
	free(dest);
	close(fd);

	//ft_strdup =======================================================
	dest = ft_strdup(str);
	printf("%s = ft_strdup(%s)\n\n", dest, dest);
	free(dest);

	//ft_atoi_base ===================================================
	printf("atoi = %d\n", ft_atoi_base("1000", "01"));
	printf("atoi = %d\n", ft_atoi_base("   30", "01234567"));
	printf("atoi = %d\n", ft_atoi_base("   a", "0123456789abcdef"));
	printf("atoi = %d\n", ft_atoi_base("   -18321", "0123456789"));
	printf("atoi = %d\n\n", ft_atoi_base("   -183 21", "0123456789"));

	//ft_list_size
	t_list list;
	t_list list_next;
	t_list list_last;
	list.data = ft_strdup("toto");
	list.next = &list_next;
	list_next.data = ft_strdup("bar");
	list_next.next = &list_last;
	list_last.data = ft_strdup("monkaS");
	list_last.next = 0;
	printf("ft_list_size = %d\n\n", ft_list_size(&list));
	free(list.data);
	free(list_next.data);
	free(list_last.data);

	//ft_list_push_front ==============================================
	t_list *save = 0;
	void *a = &d;
	void *b = &i;
	printf("&i = %p\n", a);
	printf("&i = %p\n", b);
	ft_list_push_front(&save, a);
	printf("new list size = %d\n", ft_list_size(save));
	printf("save->data = %p\n\n", save->data);
	ft_list_push_front(&save, b);
	printf("new list size = %d\n", ft_list_size(save));
	printf("save->data = %p\n\n", save->data);
	free(save->next);
	free(save);
	return (0);
}
