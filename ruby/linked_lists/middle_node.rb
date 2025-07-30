class ListNode
    attr_accessor :val, :next

    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

# Cria uma lista ligada a partir de array
def build_list(arr)
    return nil if arr.empty?
    head = ListNode.new(arr[0])
    current = head
    arr[1..].each do |val|
        current.next = ListNode.new(val)
        current = current.next
    end
    head
end

# Imprime a lista ligada
def print_list(head)

    while head
        print "#{head.val} -> "
        head = head.next
    end

    puts "nil"
end

# Função de inversão
def reverse_list(head)
    new_list = nil

    while head
        next_node = head.next
        head.next = new_list
        new_list = head
        head = next_node
    end

    new_list
end

def middle_node(head)
    a_head = head

    while a_head && a_head.next
        a_head = a_head.next.next
        head = head.next
    end

    head
end

# Exemplo de uso:
head = build_list([1, 2, 3, 4, 5])
puts "Original:"
print_list(head)

midle = middle_node(head)
puts "Midle:"
puts midle.val
