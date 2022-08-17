(** Representation of static state data. This module represents the data
    stored in state.ml. *)

type statetype
(** The abstract type of state value. *)

val make_state : int -> statetype
(** [make_state num_players] initalizes the game state with 4 players. *)

val roll_dice : int -> int
(** [roll_dice dice_size] outputs a random dice roll for a dice of size
    dice_size. *)

val get_player : statetype -> int -> Player.playertype
(** [get_player state num] get the player object given the player number*)

val get_start_pos : int -> int
(** [get_start_pos player_num] gets the position that player player_num
    will start on the board. *)

val get_playerlist : statetype -> Player.playertype list
(** [get_playerlist state] will return the list of players. *)

val get_exits : statetype -> int -> int list
(** [get_exits state player_num] will return the list of positions that
    are exits for that player on the board. *)

val in_exits : int list -> int -> bool
(** [in_exits exit_list pos] outputs whether the a given position is in
    the exit_list. *)

val get_index_from_pos : int -> int list -> int
(** [get_index_from_pos pos pos_list] returns the index in the position
    list. *)

val get_new_pos : int -> int list -> int -> int
(** [get_new_pos current_pos pos_list dice_roll] returns the new
    position after a movement of dice_roll. *)

val take_turn : statetype -> int -> int -> int -> unit
(** [take_turn state player_num pawn_num dice_roll] will move pawn_num
    of player_num according to dice_roll. *)

val get_current_positions : statetype -> int list list
(** [get_current_positions state] returns a list of lists holding the
    locations of each players pawns in order. *)

val match_with_positions : statetype -> int -> bool
(** [match_with_positions state num] returns whether num is the position
    of some pawn on the board. *)

val get_printable_id : statetype -> int -> string
(** [get_printable_id state num] returns the name of the pawn at
    position num*)

val visual_char : statetype -> int -> string

val board_print_string : statetype -> string
(** [board_print_string state] gives string of entire board state*)
