/*
Matt Melachrinos | mattmelachrinos.com
 
 lecture on programming basics
 Creative Programming 1 with Jeff Thompson
*/

void setup() {

  //NUMBERS
    
  //Integers, whole numbers, +/-
  int i = -23;
  println(i);
  println("MAX INT = " + nfc(MAX_INT));
  println("MIN INT = " + nfc(MIN_INT));
  
  //Float, Decimal point numbers, +/-
  float f = -2.5;
  println(f);
  println("MAX FLOAT = " + MAX_FLOAT);
  println("MIN FLOAT = " + MIN_FLOAT);
  
  int floatToInt = int(f);
  float intToFloat = float(i);        //float to int rounds down
  println("int to float = " + floatToInt);
  println("float to int = " + intToFloat);
  
  
  //TEXT
  
  //char = single symbol, in single quotes
  char c = 'a';    //under the hood, this is an integer, ASCII
  println(c);
  println(int(c)); //prints ASCII value
  
  //string = sequence of characters, in double quotes
  
  
  //BOOLEAN
  //true orfalse
  
  boolean value = true;
  value = false;
  
  
  //ARRAYS
  
  int[] lotsOfNumbers = {1,2,3,4,5,6,7};
  int lengthOfArray = lotsOfNumbers.length;
  
  println(lotsOfNumbers[lengthOfArray - 1]);
  
  
  //COLOR
  
  color orange = color(255,150,0);
  color[] primaries = new color[3];
  primaries[0] = color(255,0,0);
  primaries[1] = color(0,255,0);
  primaries[2] = color(0,0,255);
}