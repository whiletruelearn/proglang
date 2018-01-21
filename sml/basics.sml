(* First SML program *)
(* SML or Standard ML is a lesser known language which has influenced 
 many popular languages of modern era such as scala , Rust etc *)

(* Install `sudo apt-get install smlnj` *)

 val a = 5;
 val b = 10;

(* Semicolons are a must to show that an expression ended*)

val z =  if a > b then a else b;

(* negation of a number is using ~ *)

val k = ~5
val j = if k < 0 then z else b;

(* Turns out semicolon is a must only in REPL *)

(*Division of integers *)

val b_by_a = b div a ;

(* b / a will throw error for integers *)

val a_by_b = a div b; (* 0 *)

(* / is supported for real numbers though * )
val real_a = 2343.45345
val real_b = 3244.6657
val real_a_by_real_b = real_a / real_b