#import "/lib.typ": *
#import themes.simple: *

#show: simple-theme.with(
  config-page(
    height: 250pt,
    width: 400pt,
    margin: (x: 4pt, y: 4pt),
    header: none,
    footer: none,
  ),
)

// == cover-spacing: list items
//
// On subslide 1 the left column has two list items hidden behind #pause.
// The right column (reset via #meanwhile) always shows all three items.
// The guide line sits at the vertical centre of the right column.
// If cover-spacing is correct the left column is centred at the same height
// and the guide line bisects both columns equally on every subslide.

#slide(
  composer: (1fr, 1fr),
  setting: body => {
    place(top + left, dy: 56pt)[#line(length: 100%, stroke: .4pt + red)]
    body
  },
)[
  #align(horizon)[
    - text
    #pause
    - more
    - even more
  ]
][
  #meanwhile
  #align(horizon)[
    - text
    - more text
    - even more
  ]
]

// == cover-spacing: enum items

#slide(
  composer: (1fr, 1fr),
  setting: body => {
    place(top + left, dy: 56pt)[#line(length: 100%, stroke: .4pt + red)]
    body
  },
)[
  #align(horizon)[
    + first
    #pause
    + second
    + third
  ]
][
  #meanwhile
  #align(horizon)[
    + first
    + second
    + third
  ]
]

// == cover-spacing: terms items

#slide(
  composer: (1fr, 1fr),
  setting: body => {
    place(top + left, dy: 56pt)[#line(length: 100%, stroke: .4pt + red)]
    body
  },
)[
  #align(horizon)[
    / A: first
    #pause
    / B: second
    / C: third
  ]
][
  #meanwhile
  #align(horizon)[
    / A: first
    / B: second
    / C: third
  ]
]

// == cover-spacing: paragraphs

#slide(
  composer: (1fr, 1fr),
  setting: body => {
    place(top + left, dy: 56pt)[#line(length: 100%, stroke: .4pt + red)]
    body
  },
)[
  #align(horizon)[
    text

    #pause

    more

    even more
  ]
][
  #meanwhile
  #align(horizon)[
    text

    more text

    even more
  ]
]

// == more complex case with multiple stuff interleaved

#slide(setting: body => {
  place(top + left, dy: 56pt)[#line(length: 100%, stroke: .4pt + red)]
  place(top + left, dy: 89pt)[#line(length: 100%, stroke: .4pt + red)]
  place(top + left, dy: 135pt)[#line(length: 100%, stroke: .4pt + red)]
  place(top + left, dy: 168pt)[#line(length: 100%, stroke: .4pt + red)]
  body
})[
  #align(horizon)[
    - first
    #pause
    - second
    #pause
    normal text
    #pause
    / term 1: one
  ]
][
  #meanwhile
  #align(horizon)[
    - first
    - second
    normal text
    / term 1: one
  ]
]
