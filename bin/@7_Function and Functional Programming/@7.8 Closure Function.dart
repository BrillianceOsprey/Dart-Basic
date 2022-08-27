// closure [close over]

void main() {
  int x = 8;
  inner() {
    int i = 1; // to use closure for this int
    // print(x); // can print outer variable in the inner
    int cl() {
      return i;
    }

    return cl();
  }
  // print(i); // Error: Undefined name 'i'. Cannot print inner variable at the outer
  // inner(); // can print outer variable in the inner

  // int ini = inner();
  // print(ini);
  print(inner);
  print(inner().runtimeType);
}


/**
int z = 9;
void main(){
  int x = 8;
  {
    print(x);
    int y = 7;
  }
  // print(y);
  //Undefined name 'y'.
  // Try correcting the name to one that is defined, or defining the name
  print(z);
}
 */