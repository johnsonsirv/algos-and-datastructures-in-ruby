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
    print "#{from}->#{to}"  
end

#for a moving a fixed size from defined start, to destination
def move(starting, goal, n=2)
    if n==1
        print_move(starting, goal)
    else
        move(starting, goal-starting, n-1)
        move(starting, goal, 1)
        move(goal-starting, goal, n-1)
    end
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

tower(3)
tower_of_hanoi(3)