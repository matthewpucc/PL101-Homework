REBOL [
  Title: "Digital Clock"
  Version: 1.3.3
  Author: "Yours truely"
  Purpose: {Why this is in brackets idk}
]

f: layout [
  origin 0
  b: banner 140x32 rate 1
    effect [gradient 0x1 0.0.150 0.0.50]
    feel [engage: func [f a e] [set-face b now/time]]
]

view f