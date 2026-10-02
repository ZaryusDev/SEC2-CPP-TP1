EXEC= prog
CXXFLAGS=-std=c++20 -g

$(EXEC): main.o utilitaire.o lexique.o
	g++ -static-libstdc++ -o $(EXEC) main.o utilitaire.o lexique.o

main.o: main.cpp
	g++ -c $(CXXFLAGS) main.cpp

utilitaire.o: utilitaire.cpp
	g++ -c $(CXXFLAGS) utilitaire.cpp

lit_ecrit.o: lexique.cpp
	g++ -c $(CXXFLAGS) lit_ecrit.cpp

clean:
	rm *.o