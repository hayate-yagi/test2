(* open Format *)

let main =
  let a = Scanf.scanf "%d" (fun i -> i) in
  let (b,c) = Scanf.scanf "%d %d" (fun i s -> (i,s)) in
  let s = Scanf.scanf "%s" (fun s -> s) in
  Printf.printf "i=%d, s=%s\n" (a+b+c) s;;
