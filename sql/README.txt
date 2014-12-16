Glados

Jest to system do testowania programów (głównie programów walczących). Każdy
użytkownik może zgłosić swój program do danej gry i w momencie, gdy jest
wystarczająca ilość graczy kod jest uruchamiany na komputerze gracza i przez
sieć odbiera dane wejściowe i odsyła swoje decyzje.

Każda gra ma zbiór sędziów z których wybrany jest domyślny, który będzie
nadzorował całą rozgrywkę. Ma on za zadanie rozsyłać odpowiednie dane do
odpowiednich graczy, walidować posunięcia gracza oraz sprawdzać czy gra nie
powinna się już zakończyć. Na koniec ogłasza wynik dla każdego gracza.

Graczowi udostępniony jest wrapper za pomocą którego powinien zgłaszać swój
program. To on zajmuje się dalej uruchomieniem kodu i ewentualnym zabiciem w
przypadku gdy gra nie może być toczona dłużej (ze względu na problemy
sieciowe, decyzję sędziego itp.).

Kod programu jest odpalany na komputerze użytkownika ze względu na brak
możliwości używania zaawansowanych technik sprzętowych takich, jak CUDA, czy
większych baz danych dla programów, na serwerze, jak również prawdopodobnie
słaby sprzęt, który będzie wykorzystywany do całego przedsięwzięcia. Pozwoli
to również pozbyć się problemu izolowania całego procesu obcego od innych
procesów na serwerze. Przekładamy to na osobę piszącą program, która powinna
sama uważać, żeby nie zepsuć sobie nic w komputerze.

Rodzi to pewne problemy w postaci możliwości wykorzystywania technik znacząco
przewyższających możliwości innych gracz, jednakowoż po długiej dyskusji i
poznaniu ewentualnych alternatyw dających równiejsze szanse dla zróżnicowanych
sprzętów, zdecydowaliśmy się na to właśnie rozwiązanie dające możliwość
lepszego wykorzystania sprzętu, który jest dostępny.

W przypadku większej ilości dostępnych w danym momencie programów zgłoszonych
do danego konkursu, są one zestawiane na bazie rankingu trzymanego w bazie
danych.
