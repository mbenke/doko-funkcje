% Wszystko z funkcji
% Marcin Benke
% Dni Otwarte Kampusu Ochota, 18.04.2015

# 10101010

* ``wszyscy wiedzą'', że komputery to zera i jedynki
* znamy maszynę Turinga

![](turingMachine.png)

... ale skąd się wzięła?

# Problem rozstrzygania (Das Entscheidungsproblem)


W XVII wieku konstruowano maszyny liczące (np. Leibniz).

Ale czy da się skonstruować ``maszynę myślącą''?

## Hilbert, 1928

> Czy istnieje algorytm, który potrafi rozstrzygać
> czy dana formuła logiczna jest prawdziwa? 

Żeby wykazać, że nie, trzeba skonstruować model obliczeń, który
obejmie wszelkie możliwe algorytmy.

# Modele obliczeń

## Turing: maszyna z nieskończoną taśmą i regułami działania

$\delta(q_0,0) = (q_0,1,R)$

$\delta(q_0,1) = (q_1,0,R)$

## Church: funkcje

$\lambda f.(\lambda x. f(x\,x) (\lambda x. f(x\,x)) $

# Funkcje


* $f(x) = x^2$
* $g(x) = x^2$
* funkcja f...funkcja g...funkcja $x^2$ 
* funkcja $ax^2$ ?
* jako funkcja x: $\lambda x.ax^2$
* jako funkcja a: $\lambda a.ax^2$

# Rachunek lambda
Tylko trzy konstrukcje: $\begin{array}{lcll}
M  & \to & x  \qquad &  \mbox{zmienna}\\ 
   & \mid & \lambda x.M \qquad & \mbox{definicja funkcji}\\
   & \mid & M_1(M_2) \qquad & \mbox{użycie funkcji}\\
\end{array}$

... i jedna reguła obliczenia: $(\lambda x.M)N \leadsto M[N/x]$

Pozwala obliczyć dokładnie to samo co maszyna Turinga.

# Podstawienie

$M[N/x]$ oznacza ``M z N wstawionym zamiast x''

$x[N/x] = N$

$y[N/x] = y$ ($x\neq y$)

$(M_1(M_2))[N/x] = M_1[N/x]$

# Notacja

tekstowo `\x.M` zamiast $\lambda x.M$

`\x y z.M` zamiast `\x.\y\z.M`

opuszczamy nawiasy tam gdzie niepotrzebne, MNP oznacza (MN)P

# Kodowanie
\relax
Chcemy mieć True, False, If tak, żeby

* $If\ True\ tak\ nie \leadsto tak$
* $If\ False\ tak\ nie \leadsto nie$

. . .

```
True = \x y. x
False = \x y. y

True x y = x
True x y = y
```

. . .

	
```
If b t e = b t e
```

# Liczby naturalne

Pomysł:

$n\ f\ x = f^{\,n}(x)$

. . .

`0 = \f x.x`

`1 = \f x.f x`

`2 = \f x.f(f x)`

Jak zdefiniować funkcję Następnika: `N x = x+1` ?
