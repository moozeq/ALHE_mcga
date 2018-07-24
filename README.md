ALHE 2018 – algorytm mcga (Machine Coded Genetic Algorithm) + benchmark cec2017

Nazwa skryptu: script.R  
Wyniki w formie tekstowej: results/  
- 'dim10.txt' - wyniki dla 10 wymiarów, dla wszystkich funkcji  
- 'dim10_2.txt' - wyniki dla 10 wymiarów, bez funkcji f2  
- 'dim30.txt' - wyniki dla 30 wymiarów, dla wszystkich funkcji  
- 'dim30_2.txt' - wyniki dla 30 wymiarów, bez funkcji f2  

Wyniki w formie graficznej: results/wykresy  
Specyfikacja algorytmu: 'Specyfikacja.pdf'  
Raport z eksperymentów: 'Raport z eksperymentow.pdf'  

Celem skryptu jest przetestowanie algorytmu mcga przy użyciu funkcji z pakietu cec2017. Skrypt jest napisany w R, do działania potrzebuje pakietu napisanego przez Mgr inż. Dariusz Jagodziński będącego nakładką R na benchmark cec2017 (http://staff.elka.pw.edu.pl/~djagodzi/programy.html).  

Do uruchomienia skryptu wymagane są pakiety mcga (w tym pakiet GA) oraz cec2017. Skrypt był przetestowany w środowisku RStudio na środowiskach Windows i Linux (uruchamianie całego pliku).  

Wynikiem są dwa pliki 'dim10.txt' i 'dim30.txt', odpowiednio dla wymiarów 10 i 30 gdzie zapisywane są ślady testów 30 funkcji cec2017 w formacie zgodnym z wytycznymi prowadzącego (kod_funkcji_f;licznik_wywołań_f;raportowana_wartość_f). W dokumentacji końcowej nie uwzględniono funkcji nr 2, ponieważ jej wyniki były rozbieżne o kilkadziesiąt rzędów wielkości. W plikach 'dim10_2.txt' i 'dim30_2.txt' umieszczono wyniki z wyłączeniem tej funkcji. Wyniki wraz z graficznymi ich reprezentacjami na wykresach, umieszczono w folderze results.  

Parametry użyte w algorytmie do uzyskania danych wyników znajdują się w skrypcie i zostały ustalone zgodnie z konwencją benchmarka cec2017 opisanego w dokumencie cec2017 (http://web.mysites.ntu.edu.sg/epnsugan/PublicSite/Shared%20Documents/CEC-2017/Bound-Constrained/Definitions%20of%20%20CEC2017%20benchmark%20suite%20final%20version%20updated.pdf).  


Więcej informacji zarówno o parametrach jak i wynikach testów znajduje się w pliku 'Raport z eksperymentow.pdf'.
