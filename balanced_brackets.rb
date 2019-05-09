def balanced_brackets?(string)
    # your code here
    #remove a-z and whitespace
    str = string.gsub(/[a-z ]/, '')
    stack = [];
    map = {
          '('=> ')',
          '['=> ']',
          '{'=> '}'
      }
      i=0
 
    for i in 0...str.length
          currentChar = str[i]
          if currentChar == '(' || currentChar == '{' || currentChar == '['
              stack.push(currentChar)
          else
              last = stack.pop()
            return false if currentChar != map[last]
          end
        return false if stack.length !=0
    
        return true
    end
end
  
  input = "[({}{}{}) ([])]"
  puts balanced_brackets?(input)