void main(){
  print("hello world!!");

  //variable
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  print(name);
  print(year);
  print(antennaDiameter);
  print(flybyObjects);
  print(flybyObjects[0]);
  print(flybyObjects[1]);
  print(flybyObjects[2]);
  print(image);
  print(image['tags']);
  var tags = image['tags'];
  //print(tags[0]);//인식이 안되넹..
  print(image['url']);


  //if, for, while
  print("---------------------------------");
  print("2) if, for, while");
  print("---------------------------------");
  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (final object in flybyObjects) {
    print(object);
  }

  for (var month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }
  print(year);

  //function
  print("---------------------------------");
  print("3) function");
  print("---------------------------------");
  var functionResult = getName('진형은 입니다');
  print(functionResult);

  print("---------------------------------");
  print("4) short function");
  print("---------------------------------");
  flybyObjects.where((name) => name.contains('turn')).forEach(print);


  print("---------------------------------");
  print("5) class");
  print("---------------------------------");
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}

String getName(final name){
  return name;
}

class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method.
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}