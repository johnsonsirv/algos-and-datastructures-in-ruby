def greatest_peaks(map)
  i = 0
  g = {}
  p = []
  while i < map.size
    j = 0
    while j < map[i].size
      k = nil
      c = map[i][j]
      t = i - 1 < 0 ? 0 : map[i - 1][j]
      r = map[i][j + 1] || 0
      b = (map[i + 1] && map[i + 1][j]) || 0
      l = j - 1 < 0 ? 0 : map[i][j - 1]
      if c < t && t > r && t > b && t > l then  k = [i - 1, j] # top
      elsif c < r && r > b && r > l && r > t then k = [i, j + 1] # right
      elsif c < b && b > l && b > t && b > r then k = [i + 1, j] # bottom
      elsif c < l && l > t && l > r && l > b then k = [i, j - 1] # left
      end
      
      if k.nil? then p << [i, j]
      elsif g[k] then g[k] << [i, j]
      else g[k] = [[i, j]] end
      j += 1
    end
    i += 1
  end
  area = p.map do |k|
    i = 0
    q = [k]
    loop do
      break if i == q.size
      q += g[q[i]] || []
      i += 1
    end
    q.size
  end
  res = [area.min, area.max]
end