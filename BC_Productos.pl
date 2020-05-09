
% articulo(clave, descripcion, precio)
producto(pr1, computadora, 15).
producto(pr2, raton_alambrico, 10).
producto(pr3, proyector, 10).
producto(pr4, adaptador_vga, 10).
producto(pr5, raton_inalambrico, 5).
producto(pr6, memoria_usb, 5).
producto(pr7, disco_externo, 5).
producto(pr8, escritorio, 100). 

% inventario(clave, existencias)
inventario(pr1, 32).
inventario(pr2, 4).
inventario(pr3, 5).
inventario(pr4, 64).
inventario(pr5, 12).
inventario(pr6, 10).
inventario(r7, 89).

% cliente(nombre, ciudad, calificacion-credito)
cliente(ana, fresnillo, 5).
cliente(maria, jerez, 4).
cliente(luis, jerez, 2).
cliente(juan, zacatecas, 3).
cliente(gerardo, gaudalupe, 4).
cliente(david, zacatecas, 5).
cliente(perla, gaudalupe, 4).
cliente(omar, zacatecas, 3).
cliente(lucia, jerez, 4).
cliente(diana, fresnillo, 1).

% _ (guion bajo) COMODIN que permite UNIFICAR cualquier valor, SIN MOSTRARLO

%EJEMPLO: crear regla que muestre a los clientes de Jerez
clientes_jerez(Nombre) :- cliente(Nombre, jerez, _).	%PROBAR CONSULTA: clientes_jerez(Nombre).

%EJEMPLO 2: mostrar los clientes con calificacion de 5
clientes_5(Nombre) :- cliente(Nombre, _, 5).

%EJEMPLO 3: mostrar un listado con el nombre del producto y su existencia
producto_cantidad(Prod, Cant):- producto(NumProd, Prod, _) , inventario(NumProd, Cant).

%1.-ciudad dada
ciudad(A,B) :- cliente(A,B,_). %consulta : ciudad(X,jerez).
%2.-credito determinado
credito(X,Y) :- cliente(X,_,Y). %consulta : credito(X,4).
%3
ciudad_credito(A,B). :- cliente(_,A,B). %consulta : ciudad_credito(jerez,2).
%5
articulo(N,C) :- producto(C,N,_). %consulta : articulo(computadora,C).
%6
nivel(A,B) :- inventario(A,B). %consulta : nivel(pr1,X).
%7
cantidad_articulos(Articulo,Cantidad) :- producto(NumProd, Articulo, _) , inventario(NumProd, Cantidad). %consulta : cantidad_articulos(proyector,X).


