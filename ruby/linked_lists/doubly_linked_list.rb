class Node
    attr_accessor :value, :next_node, :prev_node

    def initialize(value)
      @value = value
      @next_node = nil
      @prev_node = nil
    end
  end

  class DoublyLinkedList
    attr_accessor :head, :tail

    def initialize
      @head = nil
      @tail = nil
    end

    def add_to_front(value)
      new_node = Node.new(value)
      new_node.next_node = @head

      if @head
        @head.prev_node = new_node
      else
        @tail = new_node
      end

      @head = new_node
    end

    def add_to_end(value)
      new_node = Node.new(value)
      new_node.prev_node = @tail

      if @tail
        @tail.next_node = new_node
      else
        @head = new_node
      end

      @tail = new_node
    end

    def remove_from_front
      return nil unless @head

      removed_value = @head.value

      if @head == @tail
        @head = nil
        @tail = nil
      else
        @head = @head.next_node
        @head.prev_node = nil
      end

      removed_value
    end

    def remove_from_end
      return nil unless @tail

      removed_value = @tail.value

      if @head == @tail
        @head = nil
        @tail = nil
      else
        @tail = @tail.prev_node
        @tail.next_node = nil
      end

      removed_value
    end

    def print_list
      current = @head

      while current
        print "#{current.value} <-> "
        current = current.next_node
      end

      puts "nil"
    end
  end

list = DoublyLinkedList.new

puts "Adicionando à frente:"
list.add_to_front(10)
list.add_to_front(20)
list.print_list  # Esperado: 20 <-> 10 <-> nil

puts "Adicionando ao fim:"
list.add_to_end(30)
list.add_to_end(40)
list.print_list  # Esperado: 20 <-> 10 <-> 30 <-> 40 <-> nil

puts "Removendo da frente:"
puts list.remove_from_front  # Esperado: 20
list.print_list              # Esperado: 10 <-> 30 <-> 40 <-> nil

puts "Removendo do fim:"
puts list.remove_from_end    # Esperado: 40
list.print_list              # Esperado: 10 <-> 30 <-> nil

puts "Removendo tudo:"
puts list.remove_from_front  # => 10
puts list.remove_from_end    # => 30
list.print_list              # => nil
