## Installing dependencies
```
bundle install
```

## Running tests
```
rspec
```

## Basic usage
building a list (basic)
```
node1 = LinkedList.new(1)
node2 = LinkedList.new(2, n1)
node3 = LinkedList.new(3, n2)
```

building a list (convenient)
```
LinkedList.build(1, 2, 3)
```

printing list
```
list = LinkedList.build(1, 2, 3)
linked_list.print_values
```

creating a reverse list
```
original = LinkedList.build(1, 2, 3)
reversed = original.reverse
```

reversing a list in-place
```
list = LinkedList.build(1, 2, 3)
head_node = list.reverse!
```

checking for cycles
```
list = LinkedList.build(1, 2, 3)
DetectCycle.new(list).call
```
