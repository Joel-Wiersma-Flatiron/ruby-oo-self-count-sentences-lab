require 'pry'

class String

  def sentence?
    return true if self[-1] == "."
    return false
  end

  def question?
    return true if self[-1] == "?"
    return false
  end

  def exclamation?
    return true if self[-1] == "!"
    return false
  end

  def count_sentences
    count = 0
    previous_character = ""
    i = 0
    while i < self.length
      count += 1 if self[i] == "." && previous_character != "."
      count += 1 if self[i] == "?" && previous_character != "?"
      count += 1 if self[i] == "!" && previous_character != "!"
      previous_character = self[i]
      i += 1
    end
    count
  end
end