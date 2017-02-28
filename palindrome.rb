module Palindrome
  def self.is_palindrome(word)
    word.downcase.chars.reverse === word.downcase.chars
  end
end

puts Palindrome.is_palindrome('Deleveled')
