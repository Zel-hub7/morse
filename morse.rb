class MorseCodeDecoder
  MORSE_CODE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2',
    '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6',
    '--...' => '7', '---..' => '8', '----.' => '9'
  }.freeze

  def self.decode_char(morse)
    MORSE_CODE[morse] || ''
  end

  def self.decode_word(morse_word)
    morse_word.split.map { |morse_char| decode_char(morse_char) }.join
  end

  def self.decode_message(morse_message)
    morse_words = morse_message.split('   ')
    morse_words.map { |morse_word| decode_word(morse_word) }.join(' ')
  end
end

# Example from the requirement that will print some text.
message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = MorseCodeDecoder.decode_message(message)
puts decoded_message
