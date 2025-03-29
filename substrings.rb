def substrings(string, dictionary)
  return_hash = {}
  downcase_string = string.downcase

  dictionary.each do |current_string|
    match = downcase_string.scan(current_string).length
    return_hash[current_string] = match unless match == 0
  end

  puts return_hash

end

i = 1
user_dictionary = []

while i <= 10 do
  puts "Please choose word #{i} for your dictionary."
  user_dictionary.push(gets.chomp.to_s.downcase)
  i += 1
end

puts "Please choose a string to search in."
input_string = gets.chomp.to_s.downcase

substrings(input_string, user_dictionary)