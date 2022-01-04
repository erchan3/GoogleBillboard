public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
  String digits = e.replace(".", "");
  System.out.println(digits);
  for (int i = 0; i < digits.length() - 10; i++)
  {
    double num = Double.parseDouble(digits.substring(i, i + 10));
    if (isPrime(num))
    {
      System.out.println(num);
      break;
    }
  }
}  
public void draw()  
{   
  //not needed for this assignment
}
public boolean isPrime(double dNum)  
{   
  for (int i = 2; i <= Math.sqrt(dNum); i++)
  {
    if (dNum % i == 0)
      return false;
  }
  return true;
} 
