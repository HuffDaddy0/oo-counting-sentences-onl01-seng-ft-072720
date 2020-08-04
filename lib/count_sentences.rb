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
    array = self.split(".")
    binding.pry
    array.delete_if do |index|
      index.length <= 1
    end
    array.length
  end
end
