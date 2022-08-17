open Player

type statetype = {
  total_board : int list;
  outer_ring : int list;
  blanks : int list;
  player1_exits : int list;
  player2_exits : int list;
  player3_exits : int list;
  player4_exits : int list;
  playerlist : Player.playertype list;
}

let make_state (num_players : int) =
  print_endline "making state";
  let player1 = Player.make_player 1 in
  let player2 = Player.make_player 2 in
  let player3 = Player.make_player 3 in
  let player4 = Player.make_player 4 in
  {
    total_board =
      [
        0;
        1;
        2;
        3;
        4;
        5;
        6;
        7;
        8;
        9;
        10;
        11;
        12;
        13;
        14;
        15;
        16;
        17;
        18;
        19;
        20;
        21;
        22;
        23;
        24;
        25;
        26;
        27;
        28;
        29;
        30;
        31;
        32;
        33;
        34;
        35;
        36;
        37;
        38;
        39;
        40;
        41;
        42;
        43;
        44;
        45;
        46;
        47;
        48;
        49;
        50;
        51;
        52;
        53;
        54;
        55;
        56;
        57;
        58;
        59;
        60;
        61;
        62;
        63;
        64;
        65;
        66;
        67;
        68;
        69;
        70;
        71;
        72;
        73;
        74;
        75;
        76;
        77;
        78;
        79;
        80;
        81;
        82;
        83;
        84;
        85;
        86;
        87;
        88;
        89;
        90;
        91;
        92;
        93;
        94;
        95;
        96;
        97;
        98;
        99;
        100;
        101;
        102;
        103;
        104;
        105;
        106;
        107;
        108;
        109;
        110;
        111;
        112;
        113;
        114;
        115;
        116;
        117;
        118;
        119;
        120;
        121;
        122;
        123;
        124;
        125;
        126;
        127;
        128;
        129;
        130;
        131;
        132;
        133;
        134;
        135;
        136;
        137;
        138;
        139;
        140;
        141;
        142;
        143;
        144;
        145;
        146;
        147;
        148;
        149;
        150;
        151;
        152;
        153;
        154;
        155;
        156;
        157;
        158;
        159;
        160;
        161;
        162;
        163;
        164;
        165;
        166;
        167;
        168;
        169;
        170;
        171;
        172;
        173;
        174;
        175;
        176;
        177;
        178;
        179;
        180;
        181;
        182;
        183;
        184;
        185;
        186;
        187;
        188;
        189;
        190;
        191;
        192;
        193;
        194;
        195;
        196;
        197;
        198;
        199;
        200;
        201;
        202;
        203;
        204;
        205;
        206;
        207;
        208;
        209;
        210;
        211;
        212;
        213;
        214;
        215;
        216;
        217;
        218;
        219;
        220;
        221;
        222;
        223;
        224;
        225;
        226;
        227;
        228;
        229;
        230;
        231;
        232;
        233;
        234;
        235;
        236;
        237;
        238;
        239;
        240;
        241;
        242;
        243;
        244;
        245;
        246;
        247;
        248;
        249;
        250;
        251;
        252;
        253;
        254;
        255;
      ];
    outer_ring =
      [
        0;
        1;
        2;
        3;
        4;
        5;
        6;
        7;
        8;
        9;
        10;
        11;
        12;
        13;
        14;
        15;
        31;
        47;
        63;
        79;
        95;
        111;
        127;
        143;
        159;
        175;
        191;
        207;
        223;
        239;
        255;
        254;
        253;
        252;
        251;
        250;
        249;
        248;
        247;
        246;
        244;
        244;
        243;
        242;
        241;
        240;
        224;
        208;
        192;
        176;
        160;
        144;
        128;
        112;
        96;
        80;
        64;
        48;
        32;
        16;
      ];
    blanks =
      [
        17;
        19;
        20;
        21;
        22;
        23;
        24;
        25;
        26;
        27;
        28;
        29;
        30;
        33;
        35;
        36;
        37;
        38;
        39;
        40;
        41;
        42;
        43;
        44;
        45;
        46;
        49;
        51;
        52;
        53;
        54;
        55;
        56;
        57;
        58;
        65;
        67;
        68;
        69;
        70;
        71;
        72;
        73;
        74;
        75;
        76;
        77;
        78;
        81;
        82;
        83;
        84;
        85;
        86;
        87;
        88;
        89;
        90;
        91;
        92;
        93;
        94;
        97;
        98;
        99;
        100;
        101;
        102;
        103;
        104;
        105;
        106;
        107;
        108;
        109;
        110;
        113;
        114;
        115;
        116;
        117;
        118;
        119;
        120;
        121;
        122;
        123;
        124;
        125;
        126;
        129;
        130;
        131;
        132;
        133;
        134;
        135;
        136;
        137;
        138;
        139;
        140;
        141;
        142;
        145;
        146;
        147;
        148;
        149;
        150;
        151;
        152;
        153;
        154;
        155;
        156;
        157;
        158;
        161;
        162;
        163;
        164;
        165;
        166;
        167;
        168;
        169;
        170;
        171;
        172;
        173;
        174;
        177;
        178;
        179;
        180;
        181;
        182;
        183;
        184;
        185;
        186;
        187;
        188;
        190;
        193;
        194;
        195;
        196;
        197;
        198;
        199;
        200;
        201;
        202;
        203;
        204;
        206;
        214;
        213;
        215;
        216;
        217;
        218;
        219;
        220;
        222;
        225;
        226;
        227;
        228;
        229;
        230;
        231;
        232;
        233;
        234;
        235;
        236;
        238;
      ];
    player1_exits = [ 2; 18; 34; 50; 66 ];
    player2_exits = [ 63; 59; 60; 61; 62 ];
    player3_exits = [ 253; 237; 221; 205; 189 ];
    player4_exits = [ 208; 209; 210; 211; 212 ];
    playerlist = [ player1; player2; player3; player4 ];
  }

let roll_dice dice_size =
  Random.self_init ();
  1 + Random.int dice_size

let get_player (state : statetype) (num : int) : Player.playertype =
  print_endline "getplayer";
  match num with
  | 1 -> List.nth state.playerlist 0
  | 2 -> List.nth state.playerlist 1
  | 3 -> List.nth state.playerlist 2
  | 4 -> List.nth state.playerlist 3
  | _ -> failwith "invalid player number"

let get_start_pos (player_num : int) =
  match player_num with
  | 1 -> 3
  | 2 -> 79
  | 3 -> 252
  | 4 -> 192
  | _ -> failwith "invalid player number"

let get_playerlist (state : statetype) = state.playerlist

let get_exits (state : statetype) (player_num : int) : int list =
  match player_num with
  | 1 -> state.player1_exits
  | 2 -> state.player2_exits
  | 3 -> state.player3_exits
  | 4 -> state.player4_exits
  | _ -> failwith "invalid player number"

let rec in_exits (exit_list : int list) (pos : int) : bool =
  match exit_list with
  | [] -> false
  | h :: t -> if pos = h then true else in_exits t pos

let rec get_index_from_pos (pos : int) (pos_list : int list) =
  match pos_list with
  | [] -> failwith "invalid index"
  | h :: t -> if h = pos then 0 else 1 + get_index_from_pos pos pos_list

let get_new_pos
    (current_pos : int)
    (pos_list : int list)
    (dice_roll : int) : int =
  let current_index = get_index_from_pos current_pos pos_list in
  let new_ind = current_index + dice_roll in
  if new_ind > List.length pos_list then ~-1
  else List.nth pos_list new_ind

let take_turn
    (state : statetype)
    (player_num : int)
    (pawn_num : int)
    (dice_roll : int) =
  print_endline "taketurn";
  let player_to_move = get_player state player_num in
  let current_pos = Player.get_pawn_pos player_to_move pawn_num in
  if current_pos = -1 then
    Player.move_pawn player_to_move pawn_num
      (dice_roll + get_start_pos player_num)
  else
    let exits = get_exits state player_num in
    if in_exits exits current_pos then
      Player.move_pawn player_to_move pawn_num
        (get_new_pos current_pos exits dice_roll)
    else
      Player.move_pawn player_to_move pawn_num
        (get_new_pos current_pos state.outer_ring dice_roll)

let get_current_positions (state : statetype) =
  print_endline "getcurrentpos";
  let player1_positions =
    Player.get_all_pawn_pos (get_player state 1)
  in
  let player2_positions =
    Player.get_all_pawn_pos (get_player state 2)
  in
  let player3_positions =
    Player.get_all_pawn_pos (get_player state 3)
  in
  let player4_positions =
    Player.get_all_pawn_pos (get_player state 4)
  in
  print_endline "gotplayer1";
  [
    player1_positions;
    player2_positions;
    player3_positions;
    player4_positions;
  ]

let match_with_positions (state : statetype) (num : int) : bool =
  print_endline "matchwpos";
  if
    List.mem true
      (List.map (List.mem num) (get_current_positions state))
  then true
  else false

let get_printable_id (state : statetype) (num : int) : string =
  print_endline "getid";
  let positions = get_current_positions state in
  let player1positions = List.nth positions 0 in
  let player2positions = List.nth positions 1 in
  let player3positions = List.nth positions 2 in
  let player4positions = List.nth positions 3 in
  if List.mem num player1positions then
    " p1."
    ^ string_of_int (get_index_from_pos num player1positions)
    ^ " "
  else if List.mem num player2positions then
    " p2."
    ^ string_of_int (get_index_from_pos num player2positions)
    ^ " "
  else if List.mem num player3positions then
    " p3."
    ^ string_of_int (get_index_from_pos num player3positions)
    ^ " "
  else if List.mem num player4positions then
    " p4."
    ^ string_of_int (get_index_from_pos num player4positions)
    ^ " "
  else "null"

let visual_char (state : statetype) (x : int) : string =
  print_endline "visualchar";
  match x with
  | a ->
      if List.mem a state.blanks then "      "
      else if
        List.mem a
          [
            15;
            31;
            47;
            63;
            79;
            95;
            111;
            127;
            143;
            159;
            175;
            191;
            207;
            223;
            239;
            255;
          ]
      then
        if match_with_positions state a then
          get_printable_id state a ^ "\n"
        else " ____ \n"
      else if match_with_positions state a then (
        print_endline "got_string";
        get_printable_id state a)
      else " ____ "

let board_print_string (state : statetype) : string =
  print_endline "here";
  List.fold_right ( ^ )
    (List.map (visual_char state) state.total_board)
    ""
