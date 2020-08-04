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
    arrray = self.split("!", ".")
    binding.pry
    self.delete_if do |index|
      index.length <= 1
    end
    self.length
  end
end
