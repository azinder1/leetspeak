class String
  define_method(:leetspeak) do
    word_array = []
    letter_array = self.split("")

    letter_array.each().with_index() do |letter, i|
      if letter == "e"
        word_array.push("3")
      elsif letter == "o"
        word_array.push("0")
      elsif letter == "I"
        word_array.push("1")
      elsif letter == "s" && i - 1 != " " && i > 0
        word_array.push("z")
      else
        word_array.push(letter)
      end
    end
    word_array.join("")
  end
end
