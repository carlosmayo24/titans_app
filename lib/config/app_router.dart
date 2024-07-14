import 'package:go_router/go_router.dart';
import 'package:titans_app/presentation/screens/exercises/lista_ejercicios_cross/lista_ejercicios_barra.dart';
import 'package:titans_app/presentation/screens/screens.dart';


final appRouter = GoRouter
(
  routes: 
  [
    GoRoute
    (
       path:'/',
      builder: (context,state)   => const Homescreen()
    ),
    GoRoute
    (
       path:AllListaMovements.path_list_movements,
      builder: (context,state)   => const AllListaMovements()
    ),    
    GoRoute
    (
       path:ListaEjerciciosBarra.PATH_LISTA_EJERCICIOS_BARRA,
      builder: (context,state)   => const ListaEjerciciosBarra()
    ), 
  ]
);