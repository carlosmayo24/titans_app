import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:titans_app/presentation/screens/exercises/lista_ejercicios_cross/lista_ejercicios_barra.dart';
class AllListaMovements extends StatelessWidget 
{
  // ignore: constant_identifier_names
  static const String path_list_movements = '/list-movements';
  const AllListaMovements({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar(title: Text(' movimientos de cross'),),
      body: ListView
      (
        children: 
         
        [
          ListTile
          (
            title: const Text('Ejercicios con Barra'),
            subtitle: const Text('Lista de movimientos de crossfit con barra'),
            leading: Image.network('https://cdn.shopify.com/s/files/1/1876/4703/articles/shutterstock_1298459278_1000x.jpg?v=1626091907', fit: BoxFit.cover,  width: 80,),
            onTap: () =>  context.push(ListaEjerciciosBarra.PATH_LISTA_EJERCICIOS_BARRA), 
            
          ),
          const Divider(color: Colors.amber, thickness: 3,),
          ListTile
          (
            title: const Text('Ejercicios con Mancuernas y KB'),
            subtitle: const Text('Lista de movimientos de crossfit con mancuernas y kb. Estos mismos pueden realizarse de forma Unilateral'),
            leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv_-AOxNGSCXVh4qE8CohYN9MpnRx6VqEdtA&s', fit: BoxFit.cover,  width: 80,),
          ),
          const Divider(color: Colors.amber, thickness: 3,),
          ListTile
          (
            title: const Text('Ejercicios de Gimnasia'),
            subtitle: const Text('Lista de movimientos de crossfit que solamente se necesita el peso corporal'),
            leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRw_pFXOVgJXB_tCVOAlSmo2-5UHlp1SJVu_gHBxnLqnLPuU15BFCD3TXo_fyrEp5MIEk&usqp=CAU', fit: BoxFit.cover,  width: 80,),
          ),
          const Divider(color: Colors.amber, thickness: 3,),
          ListTile
          (
            title: const Text('Ejercicios Metabolicos'),
            subtitle: const Text('Lista de movimientos de crossfit con barra'),
            leading: Image.network('https://image.boxrox.com/2021/02/assault-bike-fraser-crossfit-games.jpg', fit: BoxFit.fill,  width: 80,),
          ),
          const Divider(color: Colors.amber, thickness: 3,),
        ]
      ),
    );
  }
}