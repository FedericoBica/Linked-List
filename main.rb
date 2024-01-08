
class LinkedList
    attr_accessor :head

    def initialize
        @head = Node.new(value, nil)
    end

    def append(value)
        current = @head

        while current.next_node != nil
            current = current.next_node
        end

        current.next_node = Node.new(value, nil)
    end

    def prepend(value)
        @head = Node.new(value, @head)
    end

    def size 
        current = @head
        counter = 0

        while current != nil
            current = current.next_node
            counter += 1
        end

        counter
    end

    def head
        @head
    end

    def tail
        current = @head

        while current.next_node != nil
            current = current.next_node
        end

        current
    end

    def at(index)
        current = @head

        while current.index != index
            current = current.next_node
        end

        current
    end

    def pop 
        return if @head == nil

        if @head.next_node == nil
            @head = nil
        end

        previous = @head
        current = @head.next_node

        while current.next_node != nil
            previous = current
            current = current.next_node
        end

        previous.next_node = nil
    end

    def contains?(value)
        current = @head

        until current.next_node.nil?
            current = current.next_node
            return true if value == current.value
        end
        false
    end
    
    def find(value)
        current = @head
        index = 0

        until current.next_node.nil?
            current = current.next_node
            return index if value == current.value
        end
        nil
    end

    def to_s
        current = @head
        str = ""

        until current.next_node.nil?
            current = current.next_node
            str += " (#{current.value}) -> "
        end
        str += " nil "
        str
    end

end

class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node)
        self.value = value
        self.next_node = next_node
    end
end

