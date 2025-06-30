dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings (string, array)
  string_arr = string.downcase.split(" ")
  substring_hash = {}
  string_arr.each do |a|
    array.each do |c|
      if a.include?(c)
        substring_hash[c] ||= 0
        substring_hash[c] += 1
      end
    end
  end
  substring_hash
end
puts ("Please enter your sentence")
sentence = gets.chomp
puts substrings(sentence, dictionary)