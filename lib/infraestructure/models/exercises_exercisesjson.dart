class ExercisesExercisesjson 
{
  final String name;
  final String imageUrl;
  final String description;
  final String ? supportLink;

  ExercisesExercisesjson({required this.name, required this.imageUrl, required this.description,  this.supportLink});

  factory ExercisesExercisesjson.fromJson(Map<String,dynamic> json ) => 
  ExercisesExercisesjson
  (
    name: json["name"] ?? 'sin nomnbre', 
    imageUrl:  json["image"] ?? 'NODISPONIBLE.png', 
    description:  json["description"] ?? 'sin descrpcion' ,
    supportLink:  json["support_link"] != null ?  json["support_link"] : 'no se encontro'
    );

}