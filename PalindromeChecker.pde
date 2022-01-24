public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = noCapitals(word);
  word = noSpaces(word);
  word = onlyLetters(word);
  return word.equals(reverse(word));
}
public String reverse(String sWord)
{
    String sNew = new String();
    for(int i = sWord.length()-1; i >= 0; i--) {
        sNew = sNew + sWord.substring(i,i+1);
    }
    return sNew;
}
public String noSpaces(String sWord){
  String spaces = new String();
  for(int i = 0; i < sWord.length(); i++){
    if(!sWord.substring(i,i+1).equals(" "))
      spaces = spaces + sWord.charAt(i);
  }
  return spaces;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String onlyLetters(String sWord){
  String letters = new String();
  for(int i = 0; i < sWord.length(); i++){
    if(Character.isLetter(sWord.charAt(i)) == true)
      letters = letters + sWord.charAt(i);
  }
  return letters;
}
