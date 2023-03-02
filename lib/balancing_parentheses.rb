require_relative './stack'


def balancing_parentheses string

    stack = Stack.new()
    string.split("").each do |c|
    
        if stack.peek == "(" && c == ")"
            stack.pop 

        else
            stack.push(c)
        end
    end
    
        #     if c == "("
    #         stack.push(c)
    #     elsif stack.peek == "(" && c == ")"
    #         stack.pop
    #     elsif c == ")"
    #         stack.push(c)
    #     end
    # end

    return stack.size

end
