import 'package:titans_app/infraestructure/models/exercises_exercisesjson.dart';

class ExercisesResponse 
{
  final List<ExercisesExercisesjson>? results;

  ExercisesResponse({required this.results});

  factory ExercisesResponse.fromJson(Map<String,dynamic> json) => 
  ExercisesResponse
  (
    results: List<ExercisesExercisesjson>.from(json["exercises"].map((x) => ExercisesExercisesjson.fromJson(x) ))
    
    // clase que convierte json a entidad pero despues debo cambiarlo a EXERCISE porque en mi metodo puse que regresare esa clase
  );
  

}