let reverse (l: int list) : int list -> int list =
  let reverse_util (l1 : int list) : int list -> (int list * int list) =
    fun (l2 : int list) ->
      case l1 of
          [] -> (l1, l2)
        | x :: xs : int list -> reverse_util xs (x :: l2)
      end
    end
  in snd (reverse_util l ([] : int)) end
in reverse (0 :: 1 :: 1 + 1 :: 1 + 1 + 1 :: 1 + 1 + 1 + 1 :: [] : int) end
