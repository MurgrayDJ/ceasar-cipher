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
    get_shift_num(orig_string)
end

def get_shift_num(orig_string)
    print "Shift number: "
    shift_num = gets.to_i
    cipher(orig_string, shift_num)
end

def cipher(orig_string, shift_num)
    uppers = ("A".."Z").to_a
    lowers = ("a".."z").to_a
    new_string = ''

    orig_string.each_char do |current_char|
        if uppers.include?(current_char.upcase)
            if current_char.is_upper?
                char_index = uppers.find_index(current_char)
                new_string << uppers[(char_index + shift_num) % uppers.length]
            else
                char_index = lowers.find_index(current_char)
                new_string << lowers[(char_index + shift_num) % lowers.length]
            end
        else
            new_string << current_char
        end
    end
    puts new_string
end


def run_program
    get_text
end

run_program