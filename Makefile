NAME		=	simx

CXX			=	c++
RM			=	rm
LIB 		=	# if we decide to have any custom libs, add libname here
INC 		= 	inc/
SRCS		=	srcs/simx.cpp srcs/main.cpp
OBJS		=	${SRCS:.cpp=.o}
CXXFLAGS	=	-Wall -Wextra -Werror

.cpp.o:
			${CXX} ${CXXFLAGS} -I${INC} -g -c $< -o ${<:.cpp=.o}

all:		$(NAME)

$(NAME):	$(OBJS)
			${CXX} ${CXXFLAGS} $(OBJS) -o $(NAME)

clean:
			${RM} -rf $(OBJS) $(NAME)

fclean:		clean

re:			fclean all

.PHONY: 	all clean fclean re