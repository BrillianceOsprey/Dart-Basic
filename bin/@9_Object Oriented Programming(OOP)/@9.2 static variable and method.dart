
void main(){ 
  Number.sNum = 3;
  Number.sNum = 4; // one time
  Number.sTripple();
}

class Number{
  static int? sNum;
  static void sTripple(){
    print(sNum! * 3);
  }
}


/**
void main(){ 
  //create object, reference, many object
  Number number = Number();
  number.num = 3;
  number.tripple();

  Number number2 = Number();
  number2.num = 4;
  number2.tripple();
}

class Number{
  int? num;
  void tripple(){
    print(num! * 3);
  }
}
 */