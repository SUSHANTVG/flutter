class Movie {
  final int id, year, numOfRatings, criticsReview, metaScoreRating;
  final double rating;
  final List<String> genre;
  final String plot, title, poster, backdrop, time;
  final List<Map> cast;

  Movie({
    this.id,
    this.year,
    this.numOfRatings,
    this.criticsReview,
    this.metaScoreRating,
    this.rating,
    this.genre,
    this.plot,
    this.title,
    this.poster,
    this.backdrop,
    this.cast,
    this.time,
  });
}

List<Movie> movies = [
  Movie(
    id: 1,
    title: 'Bloodshot',
    year: 2020,
    poster: 'assets/images/poster_1.jpg',
    backdrop: 'assets/images/backdrop_1.jpg',
    numOfRatings: 43039,
    rating: 5.7,
    criticsReview: 179,
    metaScoreRating: 44,
    time: '1h 49min',
    genre: ['Action', 'Drama', 'Sci-Fi'],
    plot:
        'After he and his wife are murdered, marine Ray Garrison is resurrected by a team of scientists. Enhanced with nanotechnology, he becomes a superhuman, biotech killing machine - Bloodshot. As Ray first trains with fellow super-soldiers, he cannot recall anything from his former life. But when his memories flood back and he remembers the man that killed both him and his wife, he breaks out of the facility to get revenge, only to discover that there\'s more to the conspiracy than he thought.',
    cast: [
      {
        'originalName': 'Vin Diesel',
        'movieName': 'Ray Garrison/ Bloodshot',
        'image': 'assets/images/actor_1.png',
      },
      {
        'originalName': 'Eiza González',
        'movieName': 'KT',
        'image': 'assets/images/actor_2.png',
      },
      {
        'originalName': 'Sam Heughan',
        'movieName': 'Jimmy Dalton',
        'image': 'assets/images/actor_3.png',
      },
      {
        'originalName': 'Guy Pearce',
        'movieName': 'Dr. Emil Harting',
        'image': 'assets/images/actor_4.png',
      },
    ],
  ),
  Movie(
    id: 2,
    title: 'Ford v Ferrari',
    year: 2019,
    poster: 'assets/images/poster_2.jpg',
    backdrop: 'assets/images/backdrop_2.jpg',
    numOfRatings: 227245,
    rating: 8.1,
    criticsReview: 333,
    metaScoreRating: 81,
    time: '2h 32min',
    genre: ['Action', 'Biography', 'Drama'],
    plot:
        'American automotive designer Carroll Shelby and fearless British race car driver Ken Miles battle corporate interference, the laws of physics and their own personal demons to build a revolutionary vehicle for the Ford Motor Co. Together, they plan to compete against the race cars of Enzo Ferrari at the 24 Hours of Le Mans in France in 1966.',
    cast: [
      {
        'originalName': 'Christian Bale',
        'movieName': 'Ken Miles',
        'image': 'assets/images/actor_1.png',
      },
      {
        'originalName': 'Matt Damon',
        'movieName': 'Carroll Shelby',
        'image': 'assets/images/actor_2.png',
      },
      {
        'originalName': 'Jon Bernthal',
        'movieName': 'Lee Iacocca',
        'image': 'assets/images/actor_3.png',
      },
      {
        'originalName': 'Caitriona Balfe',
        'movieName': 'Mollie Miles',
        'image': 'assets/images/actor_4.png',
      },
    ],
  ),
  Movie(
    id: 3,
    title: 'Onward',
    year: 2020,
    poster: 'assets/images/poster_3.jpg',
    backdrop: 'assets/images/backdrop_3.jpg',
    numOfRatings: 66750,
    rating: 7.5,
    criticsReview: 273,
    metaScoreRating: 61,
    time: '1h 42min',
    genre: ['Animation', 'Adventure', 'Comedy'],
    plot:
        'Teenage elf brothers Ian and Barley embark on a magical quest to spend one more day with their late father. Like any good adventure, their journey is filled with cryptic maps, impossible obstacles and unimaginable discoveries. But when dear Mom finds out her sons are missing, she teams up with the legendary manticore to bring her beloved boys back home.',
    cast: [
      {
        'originalName': 'Chris Pratt',
        'movieName': 'Barley Lightfoot',
        'image': 'assets/images/actor_1.png',
      },
      {
        'originalName': 'Octavia Spencer',
        'movieName': 'The Manticore',
        'image': 'assets/images/actor_2.png',
      },
      {
        'originalName': 'Julia Louis‑Dreyfus',
        'movieName': 'Laurel Lightfoot',
        'image': 'assets/images/actor_3.png',
      },
      {
        'originalName': 'Ali Wong',
        'movieName': 'Officer Gore',
        'image': 'assets/images/actor_4.png',
      },
    ],
  ),
];
