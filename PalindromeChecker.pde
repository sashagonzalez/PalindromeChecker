public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public String noPunc(String word)
{ String newWord="";
  for (int i=0; i<word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i))==true)
    {
      newWord = newWord+ word.charAt(i);
    }
  }return newWord;
}
public String noSpaces(String sWord)
{
   String newWord= "";
 for( int i=0; i<sWord.length(); i++)
  { if(sWord.charAt(i)!=' ')
     { newWord= newWord + sWord.charAt(i);
     }
  } return newWord;
} 
public boolean palindrome(String word)
{
  int strt=0;
  word= noSpaces(word);
  word= noPunc(word);
  word=word.toLowerCase();
  for(int i=word.length()-1; i>0; i--)
  {
     if(word.charAt(strt)!=word.charAt(i))
     {return false;} 
     strt= strt+1;
  } return true;
}

