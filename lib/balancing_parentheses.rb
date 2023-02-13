require_relative './stack'

def balancing_parentheses(str)
    stack = Stack.new
    str.each_char do |char|
        if char == '('
            stack.push(char)
        elsif char == ')'
            if stack.peek == '('
                stack.pop
            else
                stack.push(char)
            end
        end
    end
    stack.size
end 