#import "@preview/touying:0.8.0": *
#import themes.metropolis: *



#let bg-slide(
  img-path,
  opacity: 35%,
  ..args,
  body
) = slide(..args)[
  #touying-fn-wrapper((self: none) => {
    let theme-bg = self.colors.at("neutral-lightest", default: white)

    place(
      top + left,
      dx: -2em,
      dy: -1em,
      block(
        width: 100% + 4em,
        height: 100% + 4.5em,
        clip: false,
      )[
        #image(img-path, width: 100%, height: 100%, fit: "cover")
        #place(top + left, block(
          width: 100%,
          height: 100%,
          fill: theme-bg.transparentize(opacity),
        ))
      ]
    )
  })

  #body
]


#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Das Bildnis des Dorian Gray],
    subtitle: [Oscar Wilde (1890)],
    author: [Leo Rassl],
    date: datetime.today(),
    logo:[ 
      #box(
        height: 1.4em,
        image("img/u1f4da_u1f437.png", height: 100%, fit: "contain")
      )
    ],
  ),
)

  #title-slide()

#[
  #show outline: set text(size: 10pt)
  #set par(leading: 0.1em)
  #outline-slide()
]


== Biographie 
#bg-slide("img/viktorianerabackground.jpg", opacity: 10%)[
  #show figure.caption: set text(size: 8pt)

  #layout(bounds => context {
    let img = image(
      "img/Oscar_Wilde_(1854-1900)_1889,_May_23._Picture_by_W._and_D._Downey.jpg",
      height: bounds.height,
      fit: "cover"
    )

    let img-width = measure(img).width

    grid(
      columns: (1fr, img-width),
      gutter: 1em,
      align: (top + left, top + right),
      [
        #align(horizon)[
          - Oscar Fingal O'Fflahertie Wills Wilde 
          - 16. Oktober. 1854 in Dublin geboren
          - Sohn von Sir William Wilde und Jane Wilde
          - Portora Royal School(1864-1871)
          - Trinity College Dublin(1871-1874)
          - Oxford(1874-1878)
        ]
      ],
      figure(
        box(
          radius:5pt,
          clip: true, 
          img
        ),
        caption: [Oscar Wilde 1889 fotografiert von 'W. & D. Downey' in London]
      )
    )
  })
]

== Werke
Liste 
== Homosexualität
#bg-slide("img/victorian-london-painting-17.jpg", opacity: 15%)[
#show figure.caption: set text(size: 8pt)

#layout(bounds => context {
  let img = image(
    "img/Oscar_Wilde_Prison_Cell_Reading_2016.jpg",
    height: bounds.height,
    fit: "cover"
  )

  let img-width = measure(img).width

  grid(
    columns: (1fr, img-width),
    gutter: 1em,
    align: (top + left, top + right),
    [
      #align(horizon)[
        - oscar wilde hatte eine homosexuelle beziehung mit lord alfred douglas
        - sein vater der marquess of queensberry hinterlies eine karte mit der aufschrift:
        „for oscar wilde, posing somdomite“
        - oscar wilde verklagte wegen verleumdung 
        - marquess sammelt beweiße oscar widles homosexuellen beziehungen 
        - zweiter prozess: zwei jahre zwangsarbeit
      ]
    ],
    figure(
      box(
        radius:5pt,
        clip: true, 
        img
      ),
      caption: [oscar wilde 1889 fotografiert von 'w. & d. downey' in london]
    )
  )
})
]


== Zussamenfassung
#bg-slide("img/holydoriangray.jpg", opacity:10%)[
#align(horizon)[
    - Dorian Gray wird sich  
  ]
]
== Figuren und deren Motive
== Textauszug
== Rezeption
== Bedeutung im 21. Jarhundert
looksmaxing clavicular etc
= Diskussionsfragen
== Diskussionsfrage 1
  wie based ist die parallel zwischen dorian gay und modernem looksmaxxing.
== Diskussionsfrage 2

#show: appendix

== Danke für eure Aufmerksamkeit
#align(center)[#box(height:100%, width: 100%)[
  #place(top + right)[
    #{
      let size = 14pt
      text(size: size)[made with ]
      box(
        radius:2pt,
        height:size,
        clip:true,
        baseline: 20%,
        image("img/typstlogo.png", fit: "contain")
      )
    }
  ]
  #grid(
    rows:(1fr, auto),
    gutter: 1em,
    align: (top + center, bottom + center),
    image("img/aufmerksamkeitschwein.png"),
    [Danke für eure Aufmerksamkeit]
  )
]]

