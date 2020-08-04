require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = self.split(" ")
    #binding.pry
    array.find_all do |index|
      index.include?("!" || "?" || ".")
    end
    array.length
  end
end
