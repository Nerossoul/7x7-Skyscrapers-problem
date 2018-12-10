require 'rspec'
require_relative '7x7_Skyscrapers'

RSpec.describe '7x7_Skyscrapers methods' do
  it 'should get right observer array' do
    right_array = [ [1,5,6,7,4,3,2],
                    [2,7,4,5,3,1,6],
                    [3,4,5,6,7,2,1],
                    [4,6,3,1,2,7,5],
                    [5,3,1,2,6,4,7],
                    [6,2,7,3,1,5,4],
                    [7,1,2,4,5,6,3] ]
    expect(take_observer_array(3, right_array)).to eq  [7,5,6,1,2,3,4]
    expect(take_observer_array(10, right_array)).to eq [5,7,2,1,3,6,4]
    expect(take_observer_array(16, right_array)).to eq [5,1,6,2,7,3,4]
    expect(take_observer_array(23, right_array)).to eq [5,3,1,2,6,4,7]
    expect(take_observer_array(24, right_array)).to eq [4,6,3,1,2,7,5]
  end

  it 'should count_visible_skyscrapers' do
    array1 = [1,2,3,4,5,6,7]
    array2 = [7,5,6,1,2,3,4]
    array3 = [5,1,6,2,7,3,4]
    array4 = [4,6,3,1,2,7,5]
    array5 = [2,1,4,3,6,5,7]
    array6 = [5,3,1,2,6,4,7]
    array7 = [4,6,3,1,2,7,5]
    array8 = [1,2,3,4,5,7,6]
    expect(count_visible_skyscrapers(array1)).to eq 7
    expect(count_visible_skyscrapers(array2)).to eq 1
    expect(count_visible_skyscrapers(array3)).to eq 3
    expect(count_visible_skyscrapers(array4)).to eq 3
    expect(count_visible_skyscrapers(array5)).to eq 4
    expect(count_visible_skyscrapers(array6)).to eq 3
    expect(count_visible_skyscrapers(array7)).to eq 3
    expect(count_visible_skyscrapers(array8)).to eq 6
  end

  it 'should check_main_game_rule' do
    array0 = [1,3,5,7,2,4,6]
    array1 = [0,2,3,4,5,6,7]
    array2 = [7,5,7,1,2,3,4]
    array3 = [0,0,0,0,0,0,0]
    array4 = [4,4,5,6,2,7,5]
    array5 = [2,1,4,3,6,5,7]
    array6 = [5,3,1,2,6,4,7]
    array7 = [4,6,3,1,2,7,5]
    array8 = [1,2,3,4,5,7,6]
    expect(check_main_game_rule(array0)).to eq true
    expect(check_main_game_rule(array1)).to eq false
    expect(check_main_game_rule(array2)).to eq false
    expect(check_main_game_rule(array3)).to eq false
    expect(check_main_game_rule(array4)).to eq false
    expect(check_main_game_rule(array5)).to eq true
    expect(check_main_game_rule(array6)).to eq true
    expect(check_main_game_rule(array7)).to eq true
    expect(check_main_game_rule(array8)).to eq true
  end

end
