dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dic)
    result = {}
    string.downcase!
    dic.each do |word|
        if string.include?(word)
            result[word] = string.scan(word).length
        end
    end
    return result
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)