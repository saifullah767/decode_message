ALPHAS = { 
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G' ,
    '....'=>'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z' 
}

def decode_char(char)
 return ALPHAS[char];
end

def decode_word(word)
  chars = word.split(' ');
  chars.each { |char|
    decode_char(char);
  }
end

def decode(string)
  words = string.split('   ');
  words.each { |word|
    decode_word(word);
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
