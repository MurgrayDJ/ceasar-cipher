# Author: Murgray D. John
# Date created: 11/9/2022 
# Purpose: Simulates a ceasar cipher, where user can input the string and the shift value.

def get_text
    print "Text to cipher: "
    orig_string = gets.chomp
    get_shift_num(orig_string)
end

def get_shift_num(orig_string)
    print "Shift number: "
    shift_num = gets.chomp

   while shift_num.to_i == 0 do
        print "Shift number: "
        shift_num = gets
    end

    cipher(orig_string, shift_num.to_i)
end

def convert_char(ltr_array, current_char, shift_num)
    char_index = ltr_array.find_index(current_char)
    ltr_array[(char_index + shift_num) % ltr_array.length]
end

def cipher(orig_string, shift_num)
    uppers = ("A".."Z").to_a
    lowers = ("a".."z").to_a
    new_string = ''

    orig_string.each_char do |current_char|
        if uppers.include?(current_char)
            new_string << convert_char(uppers, current_char, shift_num)
        elsif lowers.include?(current_char)
            new_string << convert_char(lowers, current_char, shift_num)
        else
            new_string << current_char
        end
    end
    #puts new_string
    ciper_arr = [new_string, shift_num]
end

def decipher(new_string, shift_num)
    print "Decipher text? (Y/N): "
    answer = gets.upcase.chomp
    deciphered_string = ''

    until (answer == "Y" || answer == "N") do
        print "Decipher text? (Y/N): "
        answer = gets.upcase.chomp
    end

    if answer == "Y"
        deciph_array = cipher(new_string, shift_num * -1)
        puts "Deciphered text: #{deciph_array[0]}"
    else
        puts "Okay! Thanks for coming by!"
    end
end

def run_program
    ciph_array = get_text
    puts "Ciphered Text: #{ciph_array[0]}"
    decipher(ciph_array[0], ciph_array[1])
end

run_program