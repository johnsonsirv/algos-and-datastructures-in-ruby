

def out_of_bound?(x, y, maze)
  n = maze[0].size - 1
  return false if (0..n).cover?(x) && (0..n).cover?(y)
  true
end

def find_path(x,y, maze, goal, blocked)
  current_position = maze[x][y]
  p "#{current_position}, x -> #{x}, y -> #{y}"
  #base case
  # return false if current_position.nil?
  # return true if current_position == goal
  # return false if current_position == blocked
  
  if out_of_bound?(x, y, maze)
    return false
  elsif current_position == goal
    return true
  elsif current_position == blocked
    return false
  else
    #mark position
    $solution_path << [x, y]
    return true if find_path(x, y-1, maze, goal, blocked) # north
    return true if find_path(x + 1, y, maze, goal, blocked) # east
    # return true if find_path(x, y + 1, maze, goal,  blocked) # south
    # return true if find_path(x - 1, y, maze, goal, blocked) # west
    #unmark position
    $solution_path.pop
  end

  false
end
def maze_escape(maze)
  # write your code here
  $solution_path = []
  find_path(0, 0, maze, 9, 1)

  $solution_path
end

maze =  [
  [0, 0, 0, 0, 0], 
  [0, 1, 0, 1, 0], 
  [0, 1, 0, 1, 1], 
  [0, 1, 0, 0, 0], 
  [0, 0, 0, 1, 9]
]

p maze_escape(maze)
x = -1
y = 1
# p out_of_bound?(x, y, maze)