TEXT_FILE = "romeo_and_juliet.txt"

def words_from_file(text_file)
    result = File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
rescue
    puts "Give me #{text_file} and I can execute"
    exit
else
    puts "The correct file was provided"
ensure
    puts "This is like the 'finally' block in Java"
    return result
end


words = words_from_file(TEXT_FILE)

word_count = {}
words.each do |word|
    word_count[word] = 0 if !word_count[word]
    word_count[word] += 1
end

word_count.sort_by {|word, count| count}
    .reverse[0...10]
    .each {|word, count| puts "#{word}: #{count}" }
