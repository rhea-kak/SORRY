open Finalproject
open State

let newst = State.make_state 4

let rec play_sorry_game newst =
  print_endline "PLAYING GAME\n\n\n";
  ANSITerminal.(print_string [ white ] (State.board_print_string newst));
  ANSITerminal.(print_string [ red ] "Press r to roll the die\n");
  print_string ">";
  match read_line () with
  | r ->
      if r = "r" then (
        let roll = State.roll_dice 6 in
        ANSITerminal.(
          print_string [ white ]
            (String.concat "" [ "ROLLED: "; string_of_int roll; "\n" ]));
        ANSITerminal.(
          print_string [ red ] "Choose which pawn to move\n");
        print_string ">";
        match read_line () with
        | p ->
            State.take_turn newst 1 (int_of_string p) roll;
            play_sorry_game newst)
      else
        ANSITerminal.(
          print_string [ red ] "invalid command. game terminated.")

let main () newst =
  ANSITerminal.print_string [ ANSITerminal.red ]
    "\n\nWelcome to Sorry!.\n";
  print_endline "Please press SPACE and then ENTER to begin.\n";
  print_string "> ";
  match read_line () with
  | num_players -> play_sorry_game newst
  | exception End_of_file -> ()

(* Execute the game engine. *)
let () = main () newst
