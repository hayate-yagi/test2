let () =
  let n = Scanf.scanf "%d " (fun a -> a) in
  let a = Array.init n (fun _ -> Scanf.scanf "%d " (fun a -> a)) in
 
  let xor_sum2 arr n =
    let rec loop i j n accum res = 
      if i = n
      then res
      else
        if j = n
	then (print_int (res); print_newline (); loop (i+1) j n (accum lxor arr.(i)) (res+j-i-1))
	else 
          if (accum land arr.(j) = 0)
	  then loop i (j+1) n (accum lxor arr.(j)) (res+1)
	  else loop (i+1) j n (accum lxor arr.(i)) (res+j-i-1)
    in
    loop 0 0 n 0 0
  in
  Printf.printf "%d\n" (xor_sum2 a n);

  
