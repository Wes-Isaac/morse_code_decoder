def decode_char(character)
    codes = {".-" => "A",
        "-..." => "B",
        "-.-." => "C",
        "-.." => "D",
        "." => "E",
        "..-." => "F",
        "--." => "G",
        "...." => "H",
        ".." => "I",
        ".---" => "J",
        "-.-" => "K",
        ".-.." => "L",
        "--" => "M",
        "-." => "N",
        "---" => "O",
        ".--." => "P",
        "--.-" => "Q",
        ".-." => "R",
        "..." => "S",
        "-" => "T",
        "..-" => "U",
        "...-" => "V",
        ".--" => "W",
        "-..-" => "X",
        "-.--" => "Y",
        "--.." => "Z",
        " " => " ",
        ".----" => "1",
        "..---" => "2",
        "...--" => "3",
        "....-" => "4",
        "....." => "5",
        "-...." => "6",
        "--..." => "7",
        "---.." => "8",
        "----." => "9",
        "-----" => "0",}

    if codes.has_key?(character)
        return codes[character];
    else
        return "";
    end
end

def decode_word(word)
    letters = word.split(/ /)
    decoded_word = "";

    letters.each do |letter|
        decoded_word += decode_char(letter)
    end

    return decoded_word;  
end