require 'byebug'
def my_uniq(arr)
  uniq_arr = []
  arr.each {|el| uniq_arr << el unless uniq_arr.include?(el)}

  uniq_arr  
end

def two_sum(arr)
  indices = []
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      indices << [i, j] if arr[i] + arr[j] == 0  
    end
  end
indices
end

def my_transpose(rows)
  rows.transpose
end

def stock_picker(arr)
  most_profit = 0
  pair = []
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      # debugger 
      if arr[j] - arr[i] > most_profit
        most_profit = arr[j] - arr[i]
       pair = [i, j]
      end
    end
  end
  pair 
end

# def towers_of_hanoi(stacks)    #[4, 3, 1]
#     # 1

#   loop do
#     puts "Please enter a number to move from (1,2, or 3): "
#     from = gets.chomp.to_i - 1
    
#      stack_1 = stacks[from] 

#     puts "Please enter a second number to move to (1,2 or 3): "
#     to = gets.chomp.to_i - 1
    
#     stack_2 = stacks[to]

#     move(stack_1, stack_2, stacks)
    
#     break if won?(stack_1, stack_2, stacks)

#   end
#   stacks[2]
# end

# def won?(one, two)
#   one == 0 && two == 0
# end

# def move(from, to, stacks)
#   raise "You can't move to and from the same stack" if from == to
#   stacks[from] -= 1
#   stacks[to] += 1
# end

# towers_of_hanoi(stacks)

# array with three arrays
# inner arrsys put random number 

#loop
#prompt input 
#move number from one array to another 
#check if first two empty? 
#if they are the game is over 