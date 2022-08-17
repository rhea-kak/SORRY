open Pawn

type playertype = {
  player_num : int;
  pawns : Pawn.pawntype list;
}

let make_player (num : int) : playertype =
  print_endline "making player";
  let pawn_0 = Pawn.init_pawn 1 ~-1 in
  let pawn_1 = Pawn.init_pawn 2 ~-1 in
  let pawn_2 = Pawn.init_pawn 3 ~-1 in
  let pawn_3 = Pawn.init_pawn 4 ~-1 in
  { player_num = num; pawns = [ pawn_0; pawn_1; pawn_2; pawn_3 ] }

let get_pawns (player : playertype) : pawntype list = player.pawns

let move_pawn (player : playertype) (pawn_num : int) (newpos : int) =
  Pawn.move_pawn (List.nth player.pawns pawn_num) newpos

let get_pawn_pos (player : playertype) (pawn_num : int) =
  print_endline "indivpawnpos";
  Pawn.get_location (List.nth player.pawns (pawn_num - 1))

let get_all_pawn_pos (player : playertype) : int list =
  print_endline "gettingpawnpos";
  List.map (get_pawn_pos player)
    (List.map Pawn.get_pawn_id player.pawns)
