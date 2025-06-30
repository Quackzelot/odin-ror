dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, array)
  substring_hash = {}
  if array.include?(string)
    array.each do |c|
      if string.include?(c)
        substring_hash[c] = +1
      end
    end
  end
  substring_hash
end

puts substrings("below", dictionary)