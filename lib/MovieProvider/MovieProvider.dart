import 'package:portfolio/models/Movie.dart';

class GoalProvider {
  static List<Movie> getDisneyMovies() {
    return [
      Movie()
        ..title = "Iron Man 3"
        ..length = Duration(hours: 2, minutes: 11)
        ..rating = 7.8
        ..criticism =
            "Als je van Avengers houdt zou ik deze zeker nog een keer kijken. Van de drie Iron man films is dit toch mijn minst favoriete. Wellicht komt dit omdat ik 'The Avengers' eerst niet gezien had en daarom dus niet begreep waarom Tony Stark zich had terug getrokken. Verder vind ik de verhaal lijn erg leuk en is er echt veel actie."
        ..year = 2013,
      Movie()
        ..title = "Iron Man 2"
        ..year = 2010
        ..rating = 9.2
        ..length = Duration(hours: 2, minutes: 4)
        ..criticism =
            "Dé leukste Iron man film van de trilogie en zeker in mijn top 5 allertijde. Ik krijg nog altijd kippenvel van de iconische scène op het circuit. Net nadat Tony Stark bekent heeft gemaakt Iron Man te zijn staat hij daar tegenover Ivan Vanko. Alles klopt aan de film en dat zorgt voor een heel mooi eind gevecht opde Stark Expo.",
      Movie()
        ..title = "Iron Man"
        ..length = Duration(hours: 2, minutes: 6)
        ..rating = 8.7
        ..year = 2008
        ..criticism =
            "Het begin tot midden van de film zijn fenomenaal. Hij neemt het bedrijf  van zijn vader over en is een multimiljonair. In het midden-oosten laat hij heel trots zijn nieuwe wapens zien. Wanneer hij wordt aangevallen en gevangen gezet wordt zien we pas hoe briljant Tony Stark is. Met heel weinig bouwt hij al een suit om te kunnen ontsnappen."
    ];
  }

  static List<Movie> getNetflixMovies() {
  return [
    Movie()
    ..year = 2021
    ..rating = 8.0
    ..length = Duration(hours: 1,minutes: 29)
      ..rating = 7.8
    ..criticism = "Een documentaire waar je U tegen zegt. Ali Tabrizi geeft heel mooi de duistere kant van de zee weer. Niet alleen komt de impact van plastic rietjes naarvoren, ook het eten van vis en alle gevolgen hiervan. Een vrolijke documentaire is het niet en het heeft mij laten inzien dat kleine veranderingen in gedrag van grote daden kunnen zijn."
      ..title = "Seaspiracy",
    Movie()
    ..title = "My Octopus Teacher"
    ..year = 2020
    ..length = Duration(hours: 1,minutes: 25)
    ..rating = 7.2
    ..criticism = "Deze documentaire gaat over Craig Foster en zijn octopus. Na lange tijd in een burn-out te hebben gezeten gaat Craig weer eens een duik in het water nemen. Na een aantal weken went zijn lichaam compleet aan het water. Op een dag komt hij een octopus tegen. Hij neemt ons mee in de leerzame reis van de octopus."
    ..asset = ''

  ]


  }



    getLength(Movie movie) => movie.length.toString().split('.').first.padLeft(8, "0");
}

