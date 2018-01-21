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

(* / is supported for real numbers though *)

val real_a = 2343.45345
val real_b = 3244.6657
val real_a_by_real_b = real_a / real_b

(* Shadowing *)

val a =  1;
val b = a;
val a = 2;

(* b -> 1; a ->2 *)
(* There is no concept of assigning a variable in SML *)

(* 1. The expression gets evaluated `eagerly` and gets binded to variable *)

(* Functions *)

(* fun <function name {types} > = <expression> *)

fun pow(x : int, y: int) =  (* works for y>=0 *)
    if y = 0 
    then 1
    else x * pow(x, y -1)


fun cube(x: int) = pow(x,3)

val forty_two = pow(2, pow(2,2)) * 3 + pow(4,2)

val one_twenty_five = cube 5; (* can do this only when fun has one argument *)

(*SML can't infer later bindings. Bindings need to be seen before *)