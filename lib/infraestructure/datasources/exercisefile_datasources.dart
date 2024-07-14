import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:titans_app/domain/datasources/exercise_datasources.dart';
import 'package:titans_app/domain/entities/exercise.dart';
import 'package:titans_app/infraestructure/mappers/exercise_mapper.dart';
import 'package:titans_app/infraestructure/models/exercises_response.dart';

class ExercisefileDatasources extends ExerciseDatasources
{

  List<Exercise> _jsonToExercise(Map<String,dynamic> json)
  {
    final exerciseFileResponse = ExercisesResponse.fromJson(json);
    final List<Exercise> exercises = exerciseFileResponse.results!.map((exerciseJson) => ExerciseMapper.exerciseJsonTOentity(exerciseJson)).toList();
    return exercises;
  }
  @override
  Future<List<Exercise>> getBarbellExercise()  async
  {
    final response = await rootBundle.loadString("assets/exercise_data/barbell_execise_list_data.json");
    final  data = jsonDecode(response);
    return _jsonToExercise(data);
  }

  @override
  Future<List<Exercise>> getDBandKBExercise() {
    // TODO: implement getDBandKBExercise
    throw UnimplementedError();
  }

  @override
  Future<List<Exercise>> getGymnasticsExercise() {
    // TODO: implement getGymnasticsExercise
    throw UnimplementedError();
  }

  @override
  Future<List<Exercise>> getMonoandMetabolicExercise() {
    // TODO: implement getMonoandMetabolicExercise
    throw UnimplementedError();
  }

  @override
  Future<List<Exercise>> getOlyMovements() {
    // TODO: implement getOlyMovements
    throw UnimplementedError();
  }
  
}


