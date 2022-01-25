// Error Handling Exception
// 3  Types of Error in Programming
// compile
// logic error // unit testing, testing
// runtime error // try & catch & finally // Excetion(create error by own) // on

void main(){
  List list = [1,2];
  // print(list[6]);
  try {
    print(list[6]);
  } 
  catch (e) {
    // print('Sorry for this');
    print(e);
  }
  finally{
    print('Done');
  }
}