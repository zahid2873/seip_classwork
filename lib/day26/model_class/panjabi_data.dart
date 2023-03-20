
class PanjabiInfo{
  String ?name;
  String ?img;
  int quantity= 1;
  double? price;
  int ? code;
  bool isPressed = false;
  //String? details;

  PanjabiInfo({
      this.name, this.img,this.price, this.code,});
}

List<PanjabiInfo> panjabiList =[
    PanjabiInfo(code: 3021,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 3721,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 3321,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-6.jpg",price: 2693.99,),
    PanjabiInfo(code: 3121,name: "Men’s Panjabi Ex.",img: "https://artisanclick.com/wp-content/uploads/2022/07/Punjabi-3-1-scaled.jpg",price: 2495,),
    PanjabiInfo(code: 3521,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/12/7a-2.jpg",price: 2693.99,),
    PanjabiInfo(code: 3421,name: "Happy To See You T-Shirt",img: "https://m.media-amazon.com/images/I/A1rcXo55giL._CLa%7C2140%2C2000%7C51NWf6VfLxL.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_SX679_.png",price: 999.99,),
    PanjabiInfo(code: 3061,name: "Ferrari Black T-shirt for Men",img: "https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw32c0875d/original/90_1009423-1A06875_5B040_10_VersaceAlloverT-Shirt-T-shirts-versace-online-store_0_1.jpg?sw=450&sh=632&sm=fit&sfrm=jpg&cksizes=380whttps://priyoshop.com/content/images/thumbs/0131340_ferrari-black-t-shirt-for-men-f1-ts-n-f-aid-logo_550.jpeg",price: 495,),
    PanjabiInfo(code: 3091,name: "Awesome designable sneaker",img: "https://www.merkis.com.bd/wp-content/uploads/2022/05/MG_6915-02.jpeg",price: 2450,),
    PanjabiInfo(code: 31221,name: "Adidas Daily 3.0 Black White",img: "https://cdn.shopify.com/s/files/1/0266/6276/4597/products/300913881FORESTGREEN_1_1024x1024.jpg?v=1668168629https://cdn.shopify.com/s/files/1/0266/6276/4597/products/100001_300879507_068_3_1024x1024.jpg?v=1644264849https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRltq0j9wNVIitNsp2E4LYYmxtook2Fsy3HFQ&usqp=CAUhttps://i.ebayimg.com/images/g/5r4AAOSwbEZjCxjD/s-l225.jpg",price: 7000,),
    PanjabiInfo(code: 32030,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 30931,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 32241,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 34471,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 35321,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/12/7a-2.jpg",price: 2693.99,),
    PanjabiInfo(code: 34221,name: "Happy To See You T-Shirt",img: "https://m.media-amazon.com/images/I/A1rcXo55giL._CLa%7C2140%2C2000%7C51NWf6VfLxL.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_SX679_.png",price: 999.99,),
    PanjabiInfo(code: 32361,name: "Ferrari Black T-shirt for Men",img: "https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw32c0875d/original/90_1009423-1A06875_5B040_10_VersaceAlloverT-Shirt-T-shirts-versace-online-store_0_1.jpg?sw=450&sh=632&sm=fit&sfrm=jpg&cksizes=380whttps://priyoshop.com/content/images/thumbs/0131340_ferrari-black-t-shirt-for-men-f1-ts-n-f-aid-logo_550.jpeg",price: 495,),
    PanjabiInfo(code: 32391,name: "Awesome designable sneaker",img: "https://www.merkis.com.bd/wp-content/uploads/2022/05/MG_6915-02.jpeg",price: 2450,),
    PanjabiInfo(code: 32322,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 32327,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 402321,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 80221,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 922231,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 23321,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 233121,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 21121,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 321331,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 33221,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
    PanjabiInfo(code: 31231,name: "MEN’S REGULAR-FIT PANJABI",img: "https://infinitymegamall.com/wp-content/uploads/2021/08/1a-4.jpg",price: 2693.99,),
  ];
