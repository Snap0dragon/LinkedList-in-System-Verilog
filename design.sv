// Code your design here
class Node;
  int data;
  Node next;

  function new(int value);
    this.data = value;
    this.next = null;
  endfunction
endclass

class Linkedlist;
  Node head;
  function new();
    this.head=null;
  endfunction
// display the entire list ----------------------------------------------------------------------  
  function void traverse();
    Node current = head;
    int index = 0;
    $display("Traversing the list:");
    while (current != null) begin
      $display("Index %0d: %0d", index, current.data);
      current = current.next;
      index++;
    end
  endfunction
// finder-----------------------------------------------------------------------------------------
  function int search(int value);
    Node current = head;
    int index = 0;
    while (current != null) begin
      if (current.data == value)
        return index;
      current = current.next;
      index++;
    end
    return -1; 
  endfunction
//no of elem  -------------------------------------------------------------------------------------
  function int length();
    Node current = head;
    int index = 0;
    if (head == null) begin
      $display("No of elements are %p",index);
    end
    else begin
      while (current != null) begin
        current = current.next;
        index++;
      end
      $display("No of elements are %p",index);
    end 
  endfunction
  
//Tail of the list-------------------------------------------------------------------------------
  
  function int tail();
    Node current = head;
    int idx;
    while (current!=null) begin
      idx= current.data;
      current = current.next;
      
    end
    $display("The Tail of the list is %0p",idx);
  endfunction

// inset----------------------------------------------------------------------------------------- 
  function void insert(int prev_val, int new_val);
    Node current = head;
    
    if (head == null) begin
      $display("List is empty. Adding %0d as the first element.", prev_val);
      head = new(prev_val);
      return;
    end
    

   
    while (current != null && current.data != prev_val) begin
      current = current.next;
    end
    if (current == null) begin
      $display("Element %0d not found, insertion failed.", prev_val);
    end else begin
      Node new_node = new(new_val);
      new_node.next = current.next;
      current.next = new_node;
      $display("Inserted %0d after %0d", new_val, prev_val);
    end
  endfunction
  
// delete an element operation---------------------------------------------------------------------------------  
  function void delete(int value);
    Node current = head.next;
    Node previous = head;
    
    if (head == null) begin
      $display("List is empty. Deletion failed..");
      return;
    end
    
    if (head.data == value) begin
      head = head.next; 
      $display("Deleted Head %0d from the list...", value);
      return;
    end
    while (current.data != value) begin
        previous = current;
        current = current.next;
    end  
    previous.next= current.next;
//     current.data = current.next.data;
     //current.next = current.next.next;
      $display("Deleted %0d from the list...", value);
    endfunction
    
// Delete the entire LinkedList-------------------------------------------------------
   function void del();
      Node current = head;
      Node temp;

      $display("Deleting the entire LinkedList...");

      while (current != null) begin
        temp = current.next;
        current = temp;
      end

      head = null; 
      $display("LinkedList deleted successfully.");
    endfunction
    

    function void sort();
//       if (head == null || head.next == null) begin
//         $display("List is empty or has only one element. No sorting needed.");
//         return;
//       end

      Node current;
      Node current2;
      int temp;
      bit swapped;

      do begin
        swapped = 0; 
        current = head;

        while (current.next != null) begin
          current2 = current.next;

          if (current.data > current2.data) begin
            
            temp = current.data;
            current.data = current2.data;
            current2.data = temp;
            $display("%p",head);

            swapped = 1; 
          end

          current = current.next; 
        end
      end while (swapped); 

      $display("Sorting completed.");
    endfunction
endclass


