def encode(message, shift)
    result = ''
  message.each_char do |char|
    base = char.ord < 91 ? 65 : 97
    if char =~ /[a-zA-Z]/
      char = char.ord - base
      char = (char + shift) % 26
      char += base
      result += char.chr
    else
      result += char
    end
  end
  return result
end

def decode(message, shift)
  encode(message, -shift)
end

puts encode("What a string!", 5)

puts decode("Bmfy f xywnsl!", 5)