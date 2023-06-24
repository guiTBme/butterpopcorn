class Filme {
  String id;
  String title;
  double rating;
  String image;
  String year;
  List<String> genres;
  String plot;
  String directors;
  List<String> actors;
  String runtime;

  Filme({
    required this.id,
    required this.title,
    required this.rating,
    required this.image,
    required this.year,
    required this.genres,
    required this.plot,
    required this.directors,
    required this.actors,
    required this.runtime,
  });

  factory Filme.fromJson(Map<String, dynamic> json) {
    return Filme(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      rating:
          json['imDbRating'] != null ? double.parse(json['imDbRating']) : 0.0,
      image: json['image'].toString(),
      year: json['year'] ?? '',
      genres: json['genres'] != null ? List<String>.from(json['genres']) : [],
      plot: json['plot'] ?? '',
      directors: json['directors'] ?? '',
      actors: json['actors'] != null ? List<String>.from(json['actors']) : [],
      runtime: json['runtime'] ?? '',
    );
  }
}
