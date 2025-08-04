class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def merge_two_lists(list1, list2)
    dummy = ListNode.new
    current = dummy

    # Enquanto houver elementos nas duas listas
    while list1 && list2
        if list1.val <= list2.val
            current.next = list1
            list1 = list1.next
        else
            current.next = list2
            list2 = list2.next
        end

        current = current.next
    end

    # Se ainda restar elementos em uma das listas, ligamos o restante
    current.next = list1 || list2

    # Retornamos o próximo do dummy, que é o início da lista mesclada
    dummy.next
end

list1 = ListNode.new(2, ListNode.new(5, ListNode.new(8)))
list2 = ListNode.new(1, ListNode.new(3, ListNode.new(7)))
merged_list = merge_two_lists(list1, list2)

values = []

while merged_list
    values << merged_list.val
    merged_list = merged_list.next
end

puts values.join(" -> ")
