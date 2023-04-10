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
    self.split(/(?<=[?.!])\s(?![?.!])/).count
  end
end  

# puts "hello.".sentence?
# puts "hello?".question?
# puts "hello!".exclamation?
p "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences