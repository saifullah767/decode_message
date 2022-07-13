def decode(string)
  words = string.split('   ');
  words.each { |word|
   chars = word.split(' ');
   print(chars);
  }


end
decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...');


  # given a string, with words searated by three spaces -  .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...
  #   split the string and get the words  [.-,   -... --- -..-,   ..-. ..- .-.. .-..,   --- ..-.,   .-. ..- -... .. . ...]
  #     for every word, e have to split and get every char [-..., ---, -..-]
  #       for every char we have to get the letter corresponding to the morse code decode_char(char)
  #         return the letter in uppercase return A, B, C, D
  #       return the word in uppercase ABDC
  #     return the full sentence RD REJLJK ELKJSB
