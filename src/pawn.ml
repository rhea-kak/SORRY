type pawntype = {
  pawn_id : int;
  mutable pos : int;
}

let get_location (pawn : pawntype) =
  pawn.pos

let get_pawn_id (pawn : pawntype) =
  pawn.pawn_id

let init_pawn (id : int) (init_pos : int) : pawntype =
  { pawn_id = id; pos = init_pos }

let move_pawn (pawn : pawntype) (newpos : int) = pawn.pos <- newpos
