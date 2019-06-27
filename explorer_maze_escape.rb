

def mark_position(xy)
  return [x, y]
end

def find_path(x,y, maze, goal, blocked)
  current_position = maze[x][y]
  #base case
  return false if current_position.nil?
  return true if current_position == goal
  return false if current_position == blocked
  case current_position
  when nil?
    return false
  when goal
    return true
  when blocked
    return false
  else
    #mark position
    $solution_path << [x, y]
    return true if find_path(x, y-1, maze, goal, blocked) # north
    return true if find_path(x + 1, y, maze, goal, blocked) # east
    return true if find_path(x, y + 1, maze, goal,  blocked) # south
    return true if find_path(x - 1, y, maze, goal, blocked) # west
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

# puts maze_escape(maze)
p maze[0][-1] === nil