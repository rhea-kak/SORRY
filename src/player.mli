(** Representation of static player data. This module represents the
    data stored in player.ml. *)

type playertype
(** The abstract type of values representing pawns. *)

val make_player : int -> playertype
(** [make_player num] makes a player with one pawn initalized off the
    board. *)

val get_pawns : playertype -> Pawn.pawntype list
(** [get_pawn player] is the pawn corresponding to the player. *)

val move_pawn : playertype -> int -> int -> unit
(** [move_pawn player newpos] moves the pawn and updates the player
    accordingly.*)

val get_pawn_pos : playertype -> int -> int
(** [get_pawn_pos player pawn_num] returns the current position of the
    pawn_num belonging to player*)

val get_all_pawn_pos : playertype -> int list
(** [get_all_pawn_pos player] returns a list of the positions of each of
    the pawns in increasing order of pawn_id. *)
