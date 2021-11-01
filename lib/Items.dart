class Item{
  late final String path;
  late final String name;
  late final String desc;
  int price;
  Item({required this.name,this.desc=" ",this.path="assets/steak_tartare.jpg",this.price=20});
  
  
}
List<Item> Itemlist1=[
  Item(name: "WOOD OVEN BAKED BRIE",desc:"French baguette, fermier brie, truffle honey,\ntruffle butter,shaved truffle"),
  Item(name: "TRUFFLE CAESAR SALAD",desc:"heirloom tomato, butter lettuce, artisan romaine,\nmoliterno truffle pecorino, shaved garlic crouton,\ntruffle caesar dressing"),
  Item(name: "IMPORTED BURRATA",desc:"imported buffalo milk burrata, harry's berries,\naged balsamic, arugula pesto"),
  Item(name: "MOROCCAN CAULIFLOWER",desc:"pan-roasted mixed cauliflower,ras el hanout,\npreserved lemon purée, almonds, sultanas"),

];
List<Item> Itemlist2=[
  Item(name: "WAGYU STEAK TARTARE",desc:"wagyu, truffle tarragon aioli, wild mushroom,\nshaved bone marrow, toasted baguette"),
  Item(name: "WAGYU STEAK TARTARE",desc:"wagyu, truffle tarragon aioli, wild mushroom,\nshaved bone marrow, toasted baguette"),
  Item(name: "WAGYU STEAK TARTARE",desc:"wagyu, truffle tarragon aioli, wild mushroom,\nshaved bone marrow, toasted baguette"),
  Item(name: "WAGYU STEAK TARTARE",desc:"wagyu, truffle tarragon aioli, wild mushroom,\nshaved bone marrow, toasted baguette"),

];

List<Item>imgList=[
  Item(name: "Wagyu",desc:"Wagyu (‘wagyou’) is a breed of cattle native to Japan.\nThe word literally means Japanese beef – ‘wa’ means Japanese and ‘gyu’ means beef.",path:"https://images.unsplash.com/photo-1547637205-fde0c9011f9d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80" ),
  Item(name: "Truffle Tarragon Aioli",
       desc: "Truffle aioli is a mayo-based sauce infused with the flavors of truffles and garlic. The sauce can be made with freshly shaved black or white truffles or with black or white truffle oil. Truffle oil is more affordable and readily available at grocery stores, so it’s more frequently used over fresh truffles.",
       path: "https://images.unsplash.com/photo-1572041002237-762bdc102cf6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80"
  )
];