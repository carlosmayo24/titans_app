import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:titans_app/presentation/screens/screens.dart';

class Homescreen extends StatelessWidget 
{
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return  Scaffold
    (
      appBar: AppBar
      (
        
        title: const Text('Lista Ejercicios CROSSFIT'),
      ),
      body: ListView
      (
        children: 
         [
          ListTile
          (
            title:const Text('Lista de MOVIMIENTOS CROSSFIT'),
            onTap: () => context.push(AllListaMovements.path_list_movements),
          ),
           const Divider(color: Colors.amber,thickness: 2,),
           const ListTile
          (
            title:Text('Movimientos y Progresiones HALTEROFILIA'),
          ),
          Divider(color: Colors.amber,thickness: 2,),
        ],
      ),
    );
  }
}