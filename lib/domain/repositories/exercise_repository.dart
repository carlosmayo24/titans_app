import 'package:titans_app/domain/entities/exercise.dart';

abstract class ExerciseRepository
{
  Future<List<Exercise>>getBarbellExercise();
  Future<List<Exercise>> getDBandKBExercise();
  Future <List<Exercise>> getGymnasticsExercise();
  Future <List<Exercise>> getOlyMovements();
  Future <List<Exercise>> getMonoandMetabolicExercise();


} 