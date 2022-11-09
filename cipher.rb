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

def get_text
    print "Text to cipher: "
    orig_string = gets
end

def get_shift_num
    print "Shift number: "
    shift_num = gets
end

def run_program
    get_text
    get_shift_num
end

run_program