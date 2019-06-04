# frozen_string_literal: true

class PigLatinizer
  def piglatinize(string)
    ary = string.split
    ary2 = []
    ary.each do |ele|
      index = find_vowel(ele)
      ary2 << piglatinize_maker(ele, index)
    end
    ary2.join(' ')
  end

  def find_vowel(word)
    vowel = %w[a e o u i]
    (0..word.length).each do |i|
      return i if vowel.include?(word[i].downcase)
    end
  end

  def piglatinize_maker(word, index)
    if index == 0
      word << 'way'
    else
      word << word[0...index]
      word << 'ay'
      # binding.pry
      word[index..-1]
    end
  end
end
