#import "@preview/touying:0.8.0": *
#import themes.metropolis: *

#show heading.where(level: 1): set heading(numbering: "1.")

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
  #show outline: set text(size: 9pt)
  #set par(leading: 0.1em)
  #set outline(target: heading.where(outlined: true))

  #outline-slide(title: [Inhaltsverzeichniss])
]


= Author
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
          - Geboren am 16. Oktober 1854 in Dublin
          - Sohn von Sir William Wilde und Jane Wilde
          - Portora Royal School (1864–1871)
          - Trinity College Dublin (1871–1874)
          - Oxford (1874–1878)
        ]
      ],
      figure(
        box(
          radius: 5pt,
          clip: true, 
          img
        ),
        caption: [Oscar Wilde 1889, fotografiert von W. & D. Downey in London]
      )
    )
  })
]

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
        - Oscar Wilde hatte eine Liebesbeziehung mit Lord Alfred Douglas.
        - Dessen Vater, der Marquess of Queensberry, hinterließ ihm eine Karte mit der Aufschrift:
          „For Oscar Wilde, posing somdomite“ (Sodomiter).
        - Wilde verklagte ihn daraufhin wegen Verleumdung.
        - Der Marquess sammelte Beweise für Wildes homosexuelle Kontakte, wodurch die Klage scheiterte.
        - Zweiter Prozess (1895): Wilde wurde wegen „schwerer Unzucht“ zu zwei Jahren Zwangsarbeit verurteilt.
      ]
    ],
    figure(
      box(
        radius: 5pt,
        clip: true, 
        img
      ),
      caption: [Wildes Gefängniszelle in Reading (Aufnahme von 2016)]
    )
  )
})
]

= Inhalt
== Erster Part
  - *Basil Hallward* malt ein Porträt von *Dorian Gray*
  - *Lord Henry Wotton* macht *Dorian* auf das Altern sowie auf Ästhetizismus und Hedonismus aufmerksam
  - *Dorian Gray* wünscht sich, dass das Porträt an seiner statt altert
  - *Dorian Gray* wird Anhänger des Ästhetizismus und möchte Kunst sowie „Schönheit“ erfahren
  - Er kommt mit *Sibyl Vane* zusammen
  - Ihr Bruder (*James Vane*) geht nach Australien, schwört aber zuvor Blutrache, falls *Dorian* sie schlecht behandelt
  - *Sibyl* kann vor lauter Verliebtheit nicht mehr schauspielen
  - Er verlässt sie; daraufhin bringt *Sibyl* sich um
  - Nach ersten Veränderungen am Bild sperrt *Dorian* es weg; ein „gelbes Buch“ wird zu seiner Bibel

== Kapitel 11
  - 18 Jahre Passion
  - Musik 
  - Juwelen
  - Opiumhöhlen 
  - Geschichte
  - Vergleich

== Letzter Part
  - *Basil* besucht *Dorian* und hält ihm eine Moralpredigt
  - *Dorian* zeigt ihm aus Wut das Porträt
  - Als *Basil* das Ausmaß begreift, ersticht *Dorian* ihn
  - Auf dem Weg zu einer Opiumhöhle trifft er *James Vane*, der den Tod seiner Schwester rächen will
  - *Dorian* wird paranoid
  - *James Vane* wird versehentlich bei einer Jagd erschossen
  - *Dorians* Gewissen meldet sich, und er beschließt, sein Leben zu ändern
  - Da das Porträt heuchlerische Züge aufweist, glaubt er jedoch nicht, sich reinwaschen zu können
  - Aus Verzweiflung versucht er, das Bild mit der Mordwaffe, mit der er *Basil* tötete, zu zerstören
  - Dabei stirbt er: Sein eigener Körper wird alt und schrumpelig wie auf dem Bild, während das Porträt wieder in seiner ursprünglichen Jugend erstrahlt

== Fakten zum Text
#bg-slide("img/landscapesum.jpg", opacity: 15%)[
  #align(horizon)[
    - *Entstehungszeit:* Geschrieben 1889, Ersterscheinung 1890.
    - *Textumfang:* ca. 250–300 Seiten (je nach Ausgabe).
    - *Textform:* Einziger Roman von Oscar Wilde. Er mischt Elemente des *Schauerromans* (Gothic Novel) mit der *Sittenkomödie* (Comedy of Manners) und dem philosophischen Dialog.
  ]
]

= Interpretation
== Sprache, Struktur und Stil
#bg-slide("img/David+Bates+-+View+in+Cornwall.jpg", opacity: 15%)[
  #align(horizon)[
      - Aphorismen und Paradoxa
      - Ästhetizisierende beschreibungen
      - Lange philosophische Konversationen
      - Bildhafte Metaphern und Symbolik
      - Dekadentes, sinnliches Vokabular
      - Ironische und spöttische Töne
      - Leitmotive und Doppelgänger-Motiv
      - Chronologischer Erzählfluss
    ]
]
== Referenzen auf andere Werke
#bg-slide("img/David+Bates+-+View+in+Cornwall.jpg", opacity: 15%)[
  #align(horizon)[
      - *Faust-Motiv*
        - Henry Wotton: Mephisto
        - Dorian Gray: Faust
      - *Narziss-Mythos* 
      - *Gegen den Strich* von Joris-Karl Huysmans
        - Das „gelbe Buch“
        - Dorians "heilige Schrift"
        - "gifitig"
      - *Die Renaissance* von Walter Pater 
        - "Golden Book"
        - Philosophische Grundlage von Wotton und Wilde
        - Ästhetizismus

  ]
]
== Textauszüge

#bg-slide("img/bahnhof.jpg", opacity: 15%, title:[Textauszug 1])[
  #align(horizon)[
    #quote(block: true)[
      „Es gibt so etwas wie ein schlechtes Buch nicht. Bücher sind gut geschrieben oder schlecht geschrieben. Das ist alles.“
    ]
    
    #align(right)[
      – *Oscar Wilde* (Vorwort)
    ]
  ]
]

#bg-slide("img/bahnhof.jpg", opacity: 15%, title:[Textauszug 2])[
  #align(horizon)[
    #quote(block: true)[
      „Der einzige Weg, eine Versuchung loszuwerden, ist, ihr nachzugeben. Wenn man ihr widersteht, wird die Seele krank vor Sehnsucht nach den Dingen, die sie sich selbst verboten hat, und begehrt, was ihre eigenen ungeheuerlichen Gesetze ungeheuerlich und gesetzwidrig gemacht haben.“
    ]
    
    #align(right)[
      – *Lord Henry Wotton* (Kapitel 2)
    ]
  ]
]

== Rezeption
#bg-slide("img/primelandscape.jpg", opacity: 10%)[
  #align(horizon)[
    - *Viktorianischer Skandal:* Das Buch wurde von der britischen Presse zerrissen und als „giftig“, „unmoralisch“ und „pervers“ verurteilt.
    - *Wildes Verteidigung:* Er fügte später ein Vorwort hinzu, in dem er den Ästhetizismus verteidigt: _„Es gibt keine moralischen oder unmoralischen Bücher. Bücher sind gut oder schlecht geschrieben. Das ist alles.“_
    - *Juristische Folgen:* Der Roman wurde in Wildes Gerichtsprozess 1895 tatsächlich als Beweismittel für seine moralische Verderbtheit genutzt.
    - *Heute:* Gilt als eines der wichtigsten Werke der Weltliteratur und als brillante Kritik der gesellschaftlichen Oberflächlichkeit.
  ]
]

== Bedeutung im 21. Jahrhundert
#bg-slide("img/holaysailboat.jpg", opacity: 10%)[
  #align(horizon)[

    // Die verführerische philosophie im Herzen des buches und moderner Gesellschaft vor der sowohl das gelbe buch als auch das bildniss von dorian gray warnt aber keiner in der Lage ist zu entkommen
    *Dorian Gray als logische vollendung des Ästhezismus von Walter Pater*
      - Moralische Relativität
      - begrenzte Zeit, in der es gilt soviel Genuss/Vegnügen wie möglich zu erfahren
      - Erfahrung/Phenomena als Kunst und Zweck in sich selbst(Sibyl Vane)

    *Dorian Gray; das Streben der Gegenwart*
      - Looksmaxxing
      - Konsumerismus

    Dorain Gray ist eine Warnung gegen den Konstanten Versuch schneller als die Hedonistische Tretmühle zu laufen.
  ]
]


= Diskussionsfragen

#bg-slide("img/landscapesum.jpg", opacity: 15%, title:[Diskussionsfrage 1])[
#align(horizon)[
  Wer trägt die größere Schuld an Dorians psychologischem und moralischem Untergang: 

  Inwiefern lässt sich moralische Schuld durch bloße einflussnahme tatsächlich übertragen
]
]

#bg-slide("img/David+Bates+-+View+in+Cornwall.jpg", opacity: 15%, title:[Diskussionsfrage 2])[
#align(horizon)[
  Inwieweit stimmt ihr der Aussage zu, dass viele Motivationen der heutigen Zeit einem neuen Hedonismus unterliegen, der jedoch nicht so konsequenz ausgelebt werden kann wie es Dorian Gray tut?


  #speaker-note[
    + hustle culture
    + looksmaxxing
    + bryan johnson
    + Konsumerism
    + Selbstoptimierung
  ]
]
]





#show: appendix

#bg-slide("img/schweinbg.png", opacity: 10%, title: [Danke für eure Aufmerksamkeit])[
  #align(center)[#box(height: 100%, width: 100%)[
      #place(top + right)[
        #{
          let size = 14pt
          text(size: size)[made with ]
          link("https://typst.app/")[
            #box(
              radius: 2pt,
              height: size,
              clip: true,
              baseline: 20%,
              image("img/typstlogo.png", fit: "contain")
            )
          ]
        }
      ]
      #grid(
        rows: (1fr, auto),
        gutter: 1em,
        align: (top + center, bottom + center),
        image("img/aufmerksamkeitschwein.png"),
        [Danke für eure Aufmerksamkeit]
      )
    ]
  ]
]
