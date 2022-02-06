Inductive rgb : Type :=
  | red
  | green
  | blue.

Inductive colour : Type :=
  | black
  | white
  | primary (p : rgb).

Definition monochrome (c: colour) : bool :=
  match c with
  | black => true
  | white => true
  | primary p => false
  end.

Definition isred (c : colour) : bool :=
  match c with
  | black => false
  | white => false
  | primary red => true
  | primary _ => false
  end.