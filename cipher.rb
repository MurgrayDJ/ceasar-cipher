# Author: Murgray D. John
# Date created: 11/9/2022 
# Purpose: Simulates a ceasar cipher, where user can input the string and the shift value.

class String
    def is_upper?
      self == self.upcase
    end
  
    def is_lower?
      self == self.downcase
    end
end

print "Text to cipher: "
orig_string = gets

print "Letters to shift: "
shift_num = gets
