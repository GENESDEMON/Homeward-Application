class Posts {
  int id;
  String game_name;
  String details;
  String image;
  String user;
  String user_image;
  String likes;
  String views;
  String comments;

  Posts({
    required this.id,
    required this.game_name,
    required this.details,
    required this.image,
    required this.user,
    required this.likes,
    required this.views,
    required this.comments,
    required this.user_image,
  });
}

List<Posts> posts = [
  Posts(
    id: 1,
    game_name: "COD Mobile",
    details:
        "37 Seconds of greatness! I lost though but this was a very sick shot. Snipped him right from behind!!!!",
    image: "assets/images/image1.png",
    user_image: "assets/images/skin2.png",
    user: "JollytheJoker",
    likes: "123",
    views: "234",
    comments: "34",
  ),
  Posts(
    id: 2,
    game_name: "COD Mobile",
    details:
        "37 Seconds of greatness! I lost though but this was a very sick shot. Snipped him right from behind!!!!",
    image: "assets/images/image2.png",
    user_image: "assets/images/skin7.png",
    user: "Genesdemon",
    likes: "13",
    views: "24",
    comments: "3",
  ),
  Posts(
    id: 3,
    game_name: "Apex",
    details:
        "37 Seconds of greatness! I lost though but this was a very sick shot. Snipped him right from behind!!!!",
    image: "assets/images/image3.jpeg",
    user_image: "assets/images/skin2.png",
    user: "Genesdemon",
    likes: "123",
    views: "234",
    comments: "34",
  ),
  Posts(
    id: 4,
    game_name: "GTA V",
    details:
        "37 Seconds of greatness! I lost though but this was a very sick shot. Snipped him right from behind!!!!",
    image: "assets/images/image4.jpeg",
    user_image: "assets/images/skin7.png",
    user: "JollytheJoker",
    likes: "13",
    views: "24",
    comments: "3",
  ),
];
