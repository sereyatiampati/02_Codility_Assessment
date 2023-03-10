# Challenge 1: Broken Sequence
def find_missing_number(sequence)
    numbers = sequence.split.map(&:to_i)
    non_numeric_elements = numbers.any?(&:zero?)
    return 1 if non_numeric_elements
  
    sorted_numbers = numbers.sort
    last_number = sorted_numbers.last
    expected_numbers = (1..last_number).to_a
    missing_numbers = expected_numbers - sorted_numbers
    missing_numbers.first || 0
  end


#Challenge 2: Find out whether the shape is a cube
def isCube?(volume)
    side=Math.exp(Math.log(volume)/3).to_i
    side**3== volume ? true : false
end
#Test for Challenge 1
puts find_missing_number("1 2 3 4") # 0
puts find_missing_number("1 2 4 3") # 0
puts find_missing_number("2 1 3 a") # 1
puts find_missing_number("1 3 2 5") # 4
puts find_missing_number("1 5")     # 2

#Test for Challenge 2
# puts isCube?(216) #returns true since 6**3=216
# puts isCube?(125) #returns true since 5**3=125
# puts isCube?(64) #returns true since 4**3=64
# puts isCube?(10) #returns false
# puts isCube?(14) #returns false
# puts isCube?(8) #returns true since 2**3 = 8
