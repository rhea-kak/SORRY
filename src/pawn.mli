(** Representation of static pawn data.

    This module represents the data stored in pawn.ml. *)

type pawntype
(** The abstract type of values representing pawns. *)

val get_location : pawntype -> int
(** [get_location pawn] is the location pawn is. Requires: [pawn] is a
    valid pawn representation. *)

val get_pawn_id : pawntype -> int
(** [get_pawn_id pawn] returns pawn id of pawn*)

val init_pawn : int -> int -> pawntype
(** [init_pawn num id init_pos] initializes a pawn*)

val move_pawn : pawntype -> int -> unit
(**[move_pawn pawn newpos] moves the pawn to a new position*)
