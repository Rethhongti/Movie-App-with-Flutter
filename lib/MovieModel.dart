
class MovieModel{
  int id;
  String title;
  String image;
  String type;
  double duration;
  double price;


  MovieModel({this.id,this.title,this.image,this.type,this.duration,this.price});
}

List movieDB = [
  MovieModel(id: 1,title: "Mulan",image: "images/mulan.jpg",type: "Action Movie",duration: 120,price: 3.99),
  MovieModel(id: 2,title: "Raya",image: "images/raya.jpg",type: "Cartoon Action", duration: 95,price: 4.99),
  MovieModel(id: 3,title: "Dora",image: "images/m4.jpg",type: "Adventure Movie",duration: 80,price: 1.99),
  MovieModel(id: 4,title: "ណាចាចាប់ជាតិ",image: "images/naja.jpg",type: "Action and Comedy",duration: 80,price: 5.00),
  MovieModel(id: 5,title: "Land of the lost",image: "images/land.jpg",type: "Adventure Movie",duration: 80,price: 3.99),
  MovieModel(id: 6,title: "Shadow in Cloud",image: "images/shadow.jpg",type: "Action Movie",duration: 80,price: 2.50),
];

List famousMovie = [
  MovieModel(id: 3,title: "Dora",image: "images/m4.jpg",type: "Adventure Movie",duration: 80,price: 1.99),
  MovieModel(id: 4,title: "ណាចាចាប់ជាតិ",image: "images/naja.jpg",type: "Action and Comedy",duration: 80,price: 5.00),
  MovieModel(id: 5,title: "Land of the lost",image: "images/land.jpg",type: "Adventure Movie",duration: 80,price: 3.99),
  MovieModel(id: 6,title: "Shadow in the Cloud",image: "images/shadow.jpg",type: "Action Movie",duration: 80,price: 2.50),
];
