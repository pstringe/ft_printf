CC = gcc
INC = ./libft
NAME = ft_printf
SRCS = ft_printf.c\
	   algo.c\
	   parse.c\
	   init.c\
	   help.c\
	   main.c\
	   string.c\
	   digit.c\
	   pointer.c\
	   uch.c\
	   unicode.c\
	   usi.c\
	   not.c
OBJS = $(patsubst %.c, %.o, $(SRCS))
LIBD = -L$(INC) -lft
CFLAGS = -g -Wall -Werror -Wextra -I$(INC) 
OFLAGS = -o $(NAME) $(OBJS) $(LIBD)
DSRCS = $(SRCS)
DFLAGS = $(CFLAGS) -g $(LIBD) $(DSRCS) -o
DNAME = $(NAME)_debug
DOBJS = $(patsubst %.c, %.o, $(DSRCS))

all: $(NAME)

libft.a : ./libft/Makefile
	make -C ./libft/
$(NAME): libft.a $(OBJS)
	$(CC) $(OFLAGS)

$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) -c $(SRCS)
	echo "successful object compilation"

clean:
	rm -f $(OBJS)

fclean: clean
	make fclean -C ./libft/
	rm -f $(NAME)
	rm -f $(DNAME)
	rm -rf $(DNAME).dSYM
re: fclean
	make
debug: $(DNAME)

$(DNAME): fclean libft.a
	$(CC) $(DFLAGS) $(DNAME)
	lldb $(DNAME) $(DARGS)
