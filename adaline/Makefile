all: adaline-test adaline-learn
clean :
	rm *.o *~  adaline-test adaline-learn

adaline-learn: utilitaire.o adaline.o adaline-learn-main.o
	gcc -g utilitaire.o adaline.o adaline-learn-main.o -o adaline-learn

adaline-test: utilitaire.o adaline-test.o
	gcc -g utilitaire.o adaline-test.o -o adaline-test

%.o : %.c 
	gcc -g -c $< -o $@
