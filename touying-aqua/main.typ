#import "@preview/touying:0.8.0": *
#import themes.metropolis: *



//#let bg-slide(
//  img-path, 
//  opacity: 35%, 
//  ..args, 
//  body
//) = touying-fn-wrapper((self: none) => {
//  let theme-bg = self.colors.at("neutral-lightest", default: white)
//  
//  let bg = block(
//    width: 100%,
//    height: 100%,
//    clip: true,
//  )[
//    #image(img-path, width: 100%, height: 100%, fit: "cover")
//    #place(top + left, block(
//      width: 100%,
//      height: 100%,
//      fill: theme-bg.transparentize(opacity),
//    ))
//  ]
//
//  slide(config: config-page(background: bg), ..args, body)
//})

#let bg-slide(
  img-path, 
  opacity: 35%, 
  ..args, 
  body
) = slide(..args)[
  // touying-fn-wrapper lives inside the slide BODY where Touying can resolve it
  #touying-fn-wrapper(self => {
    let theme-bg = self.colors.at("neutral-lightest", default: white)
    
    // Place image + overlay behind the slide content
    place(
      top + left,
      block(
        width: 100%,
        height: 100%,
        clip: true,
        radius: 4pt,
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

  // Main slide body content renders on top
  #body
]


#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Das Bildnis des Dorian Gray],
    subtitle: [Oscar Wilde (1890)],
    author: [Leo Rassl],
    date: datetime.today(),
    logo: box(
      height: 1.5em,
      image("img/u1f4da_u1f437.png", height: 100%, fit: "contain")
    ),

  ),
)

#title-slide()

#outline-slide()


#bg-slide("img/holydoriangray.jpg", opacity:20%)[
  == Author 
]


== Zussamenfassung
== Figuren und deren Motive
== Textauszug
== Rezeption
== Bedeutung im 21. Jarhundert
= Diskussionsfragen
== Diskussionsfrage 1
== Diskussionsfrage 2


