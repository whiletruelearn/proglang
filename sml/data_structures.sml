(* Pairs *)

val a = (1,"krishna"); (* Generates a new type :=> int * string *)

(* Accessing Pair values *)
(* No zero indexing here *)

#1 a; (* 1 : int *)
#2 a; (* "krishna" : string *)

fun swap(pr:int * int) = 
    (#2 pr, #1 pr) ;

fun sum_two_pairs(pr1 : int * int , pr2 : int * int) =
    (((#1 pr1) + (#1 pr2)) , ((#2 pr1) + (#2 pr2))) 

fun div_mod (x: int , y: int) = 
    (x div y, x mod y)

fun sort_pair(pr : int * int ) =
    if #2 pr > #1 pr 
    then swap(pr)
    else pr 


(* Tuples *)

val a  = (1,true, "krishna")
#3 a ; (*"krishna"*)


(*Nested Tuples *)

val tup = (1,(true,"sangeeth"))

#1 (#2 tup) (* bool *)

(* Lists *)

(* Tuples are fixed size . Hence Lists :P *)

val empty_list = [];
val small_list = [1,2,3,4];
val eval_list = [(1+4),(4*4),(4 div 2)]

(* But elements in list have to be of the same type *)

(* Mutating a list *)

1::empty_list ; (* [1] : int list *)
2::3::empty_list ; (* [2,3] : int list *)

(* 1::empty_list is pronounced as 1 cons empty_list *)

[1]::[[2,3]] (* val it = [[1],[2,3]] : int list list *)

(*Checking if a list is empty *)

val res = null [] (* val res = true : bool *)
val res = null [1,2,3]  (* val res = false : bool *)

(* head of a list *)
hd [1,2,3] (* 1 : int *)

(* tail of a list *)
tl [1,2,3] (* [2,3] : int list *)

tl [1]; (* [] empty list *)

(* Quiz : Access the third element of the list *)
val x = [5,1,6,8];
hd(tl( tl  x))

(*Apparently empty list `aka alpha list ` is a special thing *)
(* It doesn't really have a type and this allows us to do the following *)

1::[]
true::[]
(1,"krishna")::[] (* val it = [(1,"krishna")] : (int * string) list *)

(* alpha list allows us to cons any type  into it *)

null; (* val it = fn : 'a list -> bool *)
(* null is a function that takes any type list or alpha list and returns  a bool *)

