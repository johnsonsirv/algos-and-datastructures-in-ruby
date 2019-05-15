=begin
start = 1
spare = dest - start
dest =3

n = 2 / sie of disks
move = n-1 from start to spare
move 1 from start to destination
mover n-1 from spare to destinaton

=end
def print_move(from, to)
    puts "#{from}->#{to} "  
end

#for a moving a fixed size from defined start, to destination
def step(starting, goal, spare, n=2)
    if n==1
       print_move(starting, goal)
   else
     step(starting, spare, goal, n-1)
     step(starting, goal, spare,  1)
     step(spare, goal, starting, n-1)
   end
   return $steps
end
 
 def move(starting, goal)
   spare = (1..3).find { |n| n != starting && n != goal }
   step(starting, goal, spare)
 end
#hanoi towe for any n-size of disks. The total steps taken will be 2^n - 1 to complete the tower
def tower_of_hanoi(n, start=1, dest=3, spare=2)
    if n == 1
        print_move(start, dest)
    else
        tower_of_hanoi(n-1, start, spare, dest)
        tower_of_hanoi(1, start, dest, spare)
        tower_of_hanoi(n-1, spare, dest, start)
    end
end


puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
puts move(1,2)
puts move(3,2)
puts move(3,1)
puts move(2, 1)

# tower_of_hanoi(3)