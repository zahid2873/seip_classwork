
class Categories{

  String name;
  String img;

  Categories(this.name,this.img);

  static List<Categories> categoriesInfo(){
    return [
      Categories("American", "https://media-cdn.tripadvisor.com/media/photo-s/19/6b/d3/41/buffet-breakfast.jpg"),
      Categories("Chinese", "https://media-cdn.tripadvisor.com/media/photo-s/0b/93/0a/8f/photo2jpg.jpg"),
      Categories("Indian", "https://media-cdn.tripadvisor.com/media/photo-s/09/9a/4e/62/burgerizza-its-good.jpg"),
      Categories("Japanese", "https://media-cdn.tripadvisor.com/media/photo-o/05/2a/31/29/sashimi-platter.jpg"),
      Categories("Arabian", "https://media-cdn.tripadvisor.com/media/photo-o/1a/bc/c3/90/getlstd-property-photo.jpg"),
      Categories("Italian", "https://media-cdn.tripadvisor.com/media/photo-p/15/d8/fd/0d/rice-bowl.jpg"),
      Categories("Mesican", "https://media-cdn.tripadvisor.com/media/photo-s/12/d2/83/b1/chicken-cheese-burger.jpg"),
      Categories("Thai", "https://media-cdn.tripadvisor.com/media/photo-p/13/c2/fb/68/photo3jpg.jpg"),
      Categories("Turkish", "https://media-cdn.tripadvisor.com/media/photo-s/0b/a0/08/c9/mixed-kebab-and-homous.jpg"),

    ];
  }

}