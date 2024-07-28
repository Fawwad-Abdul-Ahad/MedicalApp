// import 'dart:ffi';

List <String> Cart = [];

void addToCart (String item){
  Cart.add(item); 
}

void removeCart (String item){
  Cart.remove(item);
}

bool isInCart (String item){
  return Cart.contains(item);
}

getCart (){
  return Cart;
}