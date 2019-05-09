def transpose_with_string_substitution(string)
    # your code here
    transposed_str = string.gsub!('gn',  'ng') while string.include?'gn'
    return transposed_str
end

def dequeue
    # used to empty a queue by calling the deq() method and it will follow the FIFO
    until @n_queue.empty?
       @result += n_queue.deq()
       @result += g_queue.deq()
   end
end

def transpose_with_queue(string)
    @n_queue = Queue.new
    @g_queue = Queue.new
    @result = ""
    string.each_char {|char|
        case char
        when 'g'
            @g_queue.enq(char)
        when 'n'
            # current char 'n' is not preceded by 'g'
            if @g_queue.empty?
                @result+=char
            else
                @n_queue.enq(char)
            end
        else
            dequeue()
            @result += char
        end
    }
    # if u only have 'n' and 'g' in the string
    dequeue()
    return @result
end
p transpose_with_queue('he was searchign on Bign for signign kigns')
p transpose_with_queue('rignadingdiggn!') 
p transpose_with_queue('gngngnnggnngggnnn') 