// Code your testbench here
// or browse Examples


module tb_linked_list;
  Linkedlist list;
  int id=22;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,tb_linked_list)
    list = new();
    //list.length();
    $display("--------------------------------------------");
    list.insert(20, 25);
    //list.traverse();
    $display("--------------------------------------------");
    list.insert(20, 25);
    //list.traverse();
    $display("--------------------------------------------");
    list.insert(25, 35);
    //list.traverse();
    $display("--------------------------------------------");
    list.insert(35, 22);
    $display("--------------------------------------------");
    //list.delete(22);
    $display("--------------------------------------------");
    list.traverse();
    list.sort();
     $display("--------------------------------------------");
    list.traverse();
    
//     list.delete(35);
//     //list.length();
//     $display("--------------------------------------------");
//     list.traverse();
//     $display("--------------------------------------------");
//     list.tail();
//     $display("--------------------------------------------");
//     $display("The head of the list is %0p",list.head.data);
//     $display("--------------------------------------------");
// 	list.reverse();
//     list.traverse();
//     $display("--------------------------------------------");
//     list.del();
//     $display("--------------------------------------------");
//     list.traverse();
//     $display("--------------------------------------------");
//     $display("The index of %0p is %0p",id,list.search(22));



  end
endmodule


