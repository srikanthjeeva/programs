def largest_words(words, n)
  words.max_by(n) do |word|
     word.length
  end
end

sent = ["testing", "hello", "hi"]
puts largest_words(sent, 1).inspect