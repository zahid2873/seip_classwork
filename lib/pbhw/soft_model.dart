class SoftModel{
  String name;
  String makingDate;
  String mackingLocation;
  double price;
  String img;
  
  SoftModel(this.name,this.makingDate,this.mackingLocation,this.price,this.img);
  static List<SoftModel> softDrinksInfo(){
    return [
      SoftModel("Sprite", "1955", "United States", 25.00, "images/s3.png"),
      SoftModel("Coca Cola", "1886", " Atlanta, Georgia, US", 25.00, "images/s4.png"),
      SoftModel("Fanta", "1940", "Italy", 25.00, "images/s1.png"),
      SoftModel("CoCa Cola", "1900", "Us", 2000, "images/s5.png"),
      SoftModel("Sprite", "1955", "United States", 25.00, "images/s3.png"),
      SoftModel("Coca Cola", "1886", " Atlanta, Georgia, US", 25.00, "images/s4.png"),
      SoftModel("Fanta", "1940", "Italy", 25.00, "images/s1.png"),
      SoftModel("CoCa Cola", "1900", "Us", 2000, "images/s5.png"),
      SoftModel("Sprite", "1955", "United States", 25.00, "images/s3.png"),
      SoftModel("Coca Cola", "1886", " Atlanta, Georgia, US", 25.00, "images/s4.png"),
      SoftModel("Fanta", "1940", "Italy", 25.00, "images/s1.png"),
      SoftModel("CoCa Cola", "1900", "Us", 2000, "images/s5.png"),

    ];
  }
}