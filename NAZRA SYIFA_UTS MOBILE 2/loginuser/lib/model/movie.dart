class Movie {
  final int id;
  final String name;
  final String description;
  final String image;

  Movie({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
  });
}

final List<Movie> movieList = [
  Movie(
    id: 1,
    name: 'Inception',
    description: 'A mind-bending thriller where dream invasion becomes possible.',
    image: 'images/inception.jpg',
  ),
  Movie(
    id: 2,
    name: 'The Dark Knight',
    description: 'A battle between Batman and the Joker in Gotham City.',
    image: 'images/dark_knight.jpg',
  ),
  Movie(
    id: 3,
    name: 'Interstellar',
    description: 'A journey through space and time to save humanity.',
    image: 'images/interstellar.jpg',
  ),
  Movie(
    id: 4,
    name: 'Avatar',
    description: 'A visually stunning exploration of Pandora and its people.',
    image: 'images/avatar.jpg',
  ),
  Movie(
    id: 5,
    name: 'The Matrix',
    description: 'A hacker discovers the shocking truth about reality.',
    image: 'images/matrix.jpg',
  ),
  Movie(
    id: 6,
    name: 'Parasite',
    description: 'A story about class disparity and unexpected twists.',
    image: 'images/parasite.jpg',
  ),
  Movie(
    id: 7,
    name: 'The Shawshank Redemption',
    description: 'A tale of hope and friendship within a prison.',
    image: 'images/shawshank.jpg',
  ),
  Movie(
    id: 8,
    name: 'Forrest Gump',
    description: 'The incredible life journey of a simple yet extraordinary man.',
    image: 'images/forrest_gump.jpg',
  ),
  Movie(
    id: 9,
    name: 'Titanic',
    description: 'A timeless love story aboard a doomed ship.',
    image: 'images/titanic.jpg',
  ),
  Movie(
    id: 10,
    name: 'The Avengers',
    description: 'Earth’s mightiest heroes unite to save the world.',
    image: 'images/avengers.jpg',
  ),
];

