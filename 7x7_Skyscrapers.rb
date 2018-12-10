def solve_puzzle(clues)
  result_array = []
  result_array
end


def take_observer_array(observer_position, full_array)
  result_array = []
  case observer_position
  when 0..6
      top_column = observer_position
  when 7..13
      right_row = observer_position - 7
  when 14..20
      bottom_column = 20 - observer_position
  when 21..27
      left_row = 27 - observer_position
  end
  if top_column
    7.times do |array_row_number|
      result_array << full_array[array_row_number][top_column]
    end
  elsif right_row
      result_array = full_array[right_row].reverse
  elsif bottom_column
    7.times do |array_row_number|
      result_array << full_array[array_row_number][bottom_column]
      result_array.reverse! if array_row_number == 6
    end
  else
    result_array = full_array[left_row]
  end
  result_array
end

def count_visible_skyscrapers(array_7_digits)
  counter = 0
  max = 0
  array_7_digits.each do |element|
    if element>max
       max = element
       counter +=1
    end
  end
  counter
end

def check_main_game_rule(array_7_digits)
  [1,2,3,4,5,6,7] == array_7_digits.sort
end

#clues =  [7,0,0,0,2,2,3, 0,0,3,0,0,0,0, 3,0,3,0,0,5,0, 0,0,0,0,5,0,4]
#result = solve_puzzle(clues)
#puts result.inspect
#puts '-------------------'

answer = [ [1,5,6,7,4,3,2],
           [2,7,4,5,3,1,6],
           [3,4,5,6,7,2,1],
           [4,6,3,1,2,7,5],
           [5,3,1,2,6,4,7],
           [6,2,7,3,1,5,4],
           [7,1,2,4,5,6,3] ]
#puts answer.inspect
#puts '-------------------'

#puts take_observer_array(23, answer)
