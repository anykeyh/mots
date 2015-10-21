require 'json'

# PROBA A N LETTRE PRECEDENTS
NUM_LETTERS_STORED = 4

probs = {}

File.read("dico.txt").split(/\n/).each do |l|
  l=(l+" ").downcase
  last_char = " "

  l.chars.inject(probs) do |h, c|
    h[last_char] ||= Hash.new(0)
    h[last_char][c] += 1

    last_char += c

    last_char = last_char[-NUM_LETTERS_STORED..-1] if last_char.length > NUM_LETTERS_STORED

    h
  end
end

File.write("prob_table.json", probs.to_json)