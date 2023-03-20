
class HeadphoneInfo{
  String ?name;
  String ?img;
  int quantity= 1;
  double? price;
  //int ? code;
  bool isPressed = false;
  //String? details;

  HeadphoneInfo({
    this.name, this.img,this.price,});
}

List<HeadphoneInfo> headphoneList =[
  HeadphoneInfo(name: "Bose ",img: "https://png.pngtree.com/png-vector/20220520/ourmid/pngtree-portable-grey-headphones-icon-png-image_4705632.png",price: 5000),
  HeadphoneInfo(name: "Bose QuietComfort ",img: "https://png.pngtree.com/png-vector/20220520/ourmid/pngtree-portable-grey-headphones-icon-png-image_4705632.png",price: 5000),
  //HeadphoneInfo(name: "Bose QuietComfort Earbuds II Truly Wireless",img: "https://png.pngtree.com/png-vector/20220520/ourmid/pngtree-portable-grey-headphones-icon-png-image_4705632.png",price: 5000),

];
