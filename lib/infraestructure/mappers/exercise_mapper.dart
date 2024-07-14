import 'package:titans_app/domain/entities/exercise.dart';
import 'package:titans_app/infraestructure/models/exercises_exercisesjson.dart';

class ExerciseMapper 
{
    static Exercise exerciseJsonTOentity (ExercisesExercisesjson exerciseJson) => 
    Exercise
    (
      nameExercise: exerciseJson.name, 
      imageUrl:exerciseJson.imageUrl, 
      description:exerciseJson.description,
      supportLink: exerciseJson.supportLink
      );
}