# Linked List Implementation in SystemVerilog

## Overview
This project implements a simple linked list in SystemVerilog with several basic functionalities, including traversal, insertion, deletion, searching, sorting, and more. The testbench (`tb_linked_list`) demonstrates how to use the linked list and provides verification of its behavior.

## File Structure
- **tb_linked_list**: The testbench that creates and tests the linked list implementation.
- **Node**: A class representing a single node in the linked list.
- **Linkedlist**: A class implementing the linked list operations.

---

## Classes
### 1. Node Class
The `Node` class represents a single element in the linked list.

#### Attributes
- `data`: Integer value stored in the node.
- `next`: Reference to the next node in the linked list.

#### Methods
- `new(int value)`: Constructor to initialize the node with a given value.

---

### 2. Linkedlist Class
The `Linkedlist` class implements all the functionality for managing the linked list.

#### Attributes
- `head`: The first node of the linked list.

#### Methods
- **`new()`**: Constructor to initialize the linked list.

- **Traversal (`traverse`)**: 
  Displays all elements in the linked list.
  ```systemverilog
  function void traverse();
  ```

- **Search (`search`)**:
  Finds the index of the first occurrence of a given value.
  ```systemverilog
  function int search(int value);
  ```

- **Length (`length`)**:
  Calculates and displays the total number of elements in the linked list.
  ```systemverilog
  function int length();
  ```

- **Tail (`tail`)**:
  Displays the last element in the linked list.
  ```systemverilog
  function int tail();
  ```

- **Insert (`insert`)**:
  Inserts a new value after a specified value in the linked list.
  ```systemverilog
  function void insert(int prev_val, int new_val);
  ```

- **Delete (`delete`)**:
  Deletes the first occurrence of a specified value from the linked list.
  ```systemverilog
  function void delete(int value);
  ```

- **Delete Entire List (`del`)**:
  Deletes all nodes in the linked list.
  ```systemverilog
  function void del();
  ```

- **Sort (`sort`)**:
  Sorts the linked list in ascending order.
  ```systemverilog
  function void sort();
  ```

---

## Testbench
The `tb_linked_list` module demonstrates how to create and manipulate a linked list using the `Linkedlist` class.

### Features
1. Inserts elements into the linked list.
2. Traverses and displays the list.
3. Sorts the list in ascending order.
4. Deletes specific elements or the entire list.
5. Searches for an element and displays its index.
6. Displays the head, tail, and length of the linked list.

### Testbench Code
```systemverilog
module tb_linked_list;
  Linkedlist list;
  int id = 22;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, tb_linked_list);
    list = new();

    $display("--------------------------------------------");
    list.insert(20, 25);
    $display("--------------------------------------------");
    list.insert(20, 25);
    $display("--------------------------------------------");
    list.insert(25, 35);
    $display("--------------------------------------------");
    list.insert(35, 22);
    $display("--------------------------------------------");
    list.traverse();
    list.sort();
    $display("--------------------------------------------");
    list.traverse();
  end
endmodule
```

---

## Features Demonstrated
1. **Insertion**: Adds elements to the list, demonstrating the behavior when the list is empty or when a value is inserted after a specified node.
2. **Traversal**: Outputs the entire list at various stages.
3. **Sorting**: Sorts the elements and displays the sorted list.
4. **Search, Length, and Tail**: Functions for searching and retrieving metadata about the list.

---

## Usage
1. Run the testbench to verify the linked list implementation.
2. Use `$dumpfile` and `$dumpvars` for waveform visualization in tools like GTKWave.
3. Observe the output in the simulation log to verify the operations.

---

## Future Improvements
- Add support for doubly linked lists.
- Implement additional operations like splitting, merging, or finding middle elements.
- Optimize sorting for larger linked lists.

---

## License
This project is licensed under the MIT License. Feel free to use and modify it for educational purposes.

