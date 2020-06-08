class Users{
  final String name;
  final String when;
  final String image;
  final int rating;
  final String review;

  Users({this.name,this.when,this.image,this.rating,this.review});
}

List<Users> users = [
  Users(
    name:"John",
    when: "3 days ago",
    image: "assets/john.jpg",
    rating: 5,
    review: "John review"
  ),
  Users(
    name: "Olivia",
    when: "A week ago",
    image: "assets/olivia.jpg",
    rating: 4,
    review: "Olivia Review"
  )
];