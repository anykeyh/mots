require 'json'

DICTIONARY = JSON.parse(File.read('prob_table.json'))

NUM_LETTERS_STORED = 4

def rand_pick_char sub_prob_array
  total_occurences = sub_prob_array.values.inject(0){ |s,x| s+=x }

  total_rand = (rand * total_occurences).round

  sub_prob_array.each do |k,v|
    total_rand -= v
    if total_rand<=0
      return k
    end
  end
end

def generate_word
  current_char = " "

  word = " "
  loop do
    next_prob = DICTIONARY[word[-[NUM_LETTERS_STORED, word.length].min..-1]]

    current_char = rand_pick_char(next_prob)
    word += current_char
    break if current_char == " "
  end

  word.strip
end

puts 100.times.map{ generate_word }.join(" ")
