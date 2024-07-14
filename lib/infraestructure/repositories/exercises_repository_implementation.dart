import 'package:titans_app/domain/datasources/exercise_datasources.dart';
import 'package:titans_app/domain/entities/exercise.dart';
import 'package:titans_app/domain/repositories/exercise_repository.dart';

class ExercisesRepositoryImplementation extends ExerciseRepository 
{
  final ExerciseDatasources datasources;

  ExercisesRepositoryImplementation(this.datasources);
   
  @override
  Future<List<Exercise>> getBarbellExercise() {
    return datasources.getBarbellExercise();
  }

  @override
  Future<List<Exercise>> getDBandKBExercise() 
  {
    return datasources.getDBandKBExercise(); 
  }

  @override
  Future<List<Exercise>> getGymnasticsExercise() 
  {
    return datasources.getGymnasticsExercise();
  }

  @override
  Future<List<Exercise>> getMonoandMetabolicExercise() {
    return datasources.getMonoandMetabolicExercise();
  }

  @override
  Future<List<Exercise>> getOlyMovements() {
    return datasources.getOlyMovements() ;
  }

}