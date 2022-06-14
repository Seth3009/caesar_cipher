def caesar_cipher(sentence, num)
    shifted_words = []
    alp = Array('a'..'z')
    low_case = Hash[alp.zip(alp.rotate(num))]
    alp = Array('A'..'Z')
    up_case = Hash[alp.zip(alp.rotate(num))]
    shifted_chars = low_case.merge(up_case)
    words = sentence.split(' ')
    
    words.each do |word|
     shifted_words << word.chars.map { |c| shifted_chars.fetch(c, c) }.join
    end
    
    shifted_words.join(' ')
end