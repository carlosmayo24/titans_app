import 'package:flutter/material.dart';
import 'package:titans_app/domain/entities/exercise.dart';
import 'package:titans_app/presentation/screens/exercises_data/exercises_info.dart';
import 'package:url_launcher/url_launcher.dart';


class ListaEjerciciosBarra extends StatefulWidget 
{
  static const String PATH_LISTA_EJERCICIOS_BARRA= '/barbell-list';
  const ListaEjerciciosBarra({super.key});

  @override
  State<ListaEjerciciosBarra> createState() => _ListaEjerciciosBarraState();
}

class _ListaEjerciciosBarraState extends State<ListaEjerciciosBarra> 
{

  
  @override
  Widget build(BuildContext context) 
  {
    return  FutureBuilder
    (
      future: listaEjercicios(),
      builder: (context, snapshot) 
      {
        return snapshot.hasError ?    
        const Text('NO pude') :

        Scaffold
        (
          appBar: AppBar(title: const Text('ejercicios BARRA'),),
          body: Expanded
          (
            child: ListView.builder
            (
              itemCount: snapshot.data!.length,
              itemBuilder: (context,index)=>
              _Slide(ejercicio: snapshot.data![index])
            ),
          ),
        );
      } ,
    );
  }

   Future<List<Exercise>> listaEjercicios() async
   {
    final listaEjerciciosBarra = await exercisesRepositoryInfo.getBarbellExercise();
    return  listaEjerciciosBarra;
   } 
}

class _Slide extends StatelessWidget 
{
  final Exercise ejercicio;
  const _Slide({ required this.ejercicio});

  @override
  Widget build(BuildContext context) 
  {
     final screenSize = MediaQuery.sizeOf(context);
    return Container
    (
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card
      (
        color: const Color.fromARGB(255, 243, 204, 86),
        child: Expanded
        (
          flex: 2,
          child: Padding
          (
            padding: const EdgeInsets.all(20),
            child: Column
            (
              
              children: 
              [
                ClipRRect
                (

                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/barbell/${ejercicio.imageUrl}',  fit: BoxFit.fill, height: screenSize.height*.2, width: screenSize.width*0.8,),
                ),
                const SizedBox(height: 10,),
                Center
                (
                  child: Text(ejercicio.nameExercise, style: const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),),
                ),
                const SizedBox(height: 14,),
                 
                    Text(ejercicio.description, style: const TextStyle(color: Colors.black,fontSize: 18, ),textAlign: TextAlign.justify,),
                 const SizedBox(height: 14,),
                 Center
                 (
                  child: ElevatedButton(onPressed:()=> launchUrl(Uri.parse(ejercicio.supportLink! )) , child: const Center(child: Text('Tutorial')))
                )
                  
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}