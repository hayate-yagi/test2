open Format

let main =
  let (i,s) = Scanf.scanf "%d %s" (fun i s -> (i,s)) in
  Printf.printf "i=%d, s=%s\n" i s;;

1+1;;
