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
== Zusammenfassung
#bg-slide("img/holydoriangray.jpg", opacity: 10%)[
  #align(horizon)[
    - Der attraktive und junge *Dorian Gray* lässt sich von Basil Hallward porträtieren.
    - Durch Lord Henry Wotton wird er zum vollkommenen Hedonismus verführt.
    - Dorian äußert den Wunsch, dass das Porträt an seiner Stelle altern möge, damit er für immer jung bleibt.
    - Sein Wunsch geht in Erfüllung: Er stürzt sich in ein Leben voller Laster, Skandale und sogar Mord.
    - Während Dorian makellos und jung bleibt, wird das Gemälde durch seine Sünden immer hässlicher und monströser.
    - Am Ende versucht Dorian aus Verzweiflung das Bild zu zerstören, tötet sich dabei jedoch selbst.
  ]
]

== Figuren und deren Motive
#bg-slide("img/landschaft.jpg", opacity: 10%)[
  #align(horizon)[
    - *Dorian Gray:*
      Verkörpert Narzissmus und extreme Eitelkeit. Seine Motive sind die ewige Flucht vor dem Tod/Alter und das hemmungslose Ausleben all seiner Triebe.
    - *Lord Henry Wotton:*
      Der Zyniker und Theoretiker des „Neuen Hedonismus“. Er fungiert als manipulierender Verführer (eine Art Mephisto), setzt seine radikalen Ideen aber selbst nie in die Tat um.
    - *Basil Hallward:*
      Das moralische Gewissen des Romans. Er ist der talentierte Künstler, der von der Perfektion Dorians geblendet wird und letztlich von seiner eigenen Kreation zerstört wird.
  ]
]

== Entstehung und Textform
#bg-slide("img/landscapesum.jpg", opacity: 15%)[
  #align(horizon)[
    - *Entstehungszeit:* Geschrieben 1889, Ersterscheinung 1890.
    - *Zwei Fassungen:* 
      - 1890: Zunächst als Geschichte in *Lippincott’s Monthly Magazine* (13 Kapitel, stark gekürzt vom Herausgeber wegen "anstößiger" Passagen).
      - 1891: Erweiterte Buchfassung als *Roman* (20 Kapitel) mit dem berühmten Vorwort zum Ästhetizismus.
    - *Textumfang:* ca. 250–300 Seiten (je nach Ausgabe).
    - *Textform:* Einziger Roman von Oscar Wilde. Er mischt Elemente des *Schauerromans* (Gothic Novel) mit der *Sittenkomödie* (Comedy of Manners) und dem philosophischen Dialog.
  ]
]

= Interpretation
== Sprache, Struktur und Referenzen
#bg-slide("img/David+Bates+-+View+in+Cornwall.jpg", opacity: 15%)[
  #align(horizon)[
    - *Strukturelle Besonderheit:* Die Handlung rückt oft in den Hintergrund. Der Roman wird getragen von endlosen, scharfzüngigen *Dialogen und philosophischen Monologen* (insbesondere durch Lord Henry).
    - *Sprachliche Besonderheiten:* 
      - Extrem *aphoristischer* Stil (voller kurzer, pointierter und paradoxer Lebensweisheiten).
      - Detailverliebte, fast *dekadente Beschreibungen* von Stoffen, Gerüchen und Kunstgegenständen.
    - *Referenzen auf andere Werke:*
      - *Die Renaissance* von Walter Pater; Philosophische Grundlage die ins Extrem getrieben wird
      - *Faust-Motiv:* Der Pakt mit dem „Teufel“ für weltlichen Gewinn (ewige Jugend).
      - *Narziss-Mythos:* Die tödliche Verliebtheit in das eigene Spiegelbild.
      - *Joris-Karl Huysmans ("Gegen den Strich"):* Das „gelbe Buch“, das Lord Henry Dorian gibt.
  ]
]
== Textauszug
#bg-slide("img/bahnhof.jpg", opacity: 10%)[
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

    *Dorian Gray als logische vollendung des neuen Hedonsimus von Walter Pater*
      - Moralische Relativität
      - begrenzte Zeit, in der es gilt soviel Genuss/Vegnügen wie möglich zu erfahren
      - Erfahrung/Phenomena als Kunst und Zweck in sich selbst(Sibyl Vane)
    *Viele moderne Bewegungen operieren mit denselben Zugrundeliegenden Aufnahme*
      - Looksmaxxing
      - Konsumerismus

    Dorain Gray ist eine Warnung gegen den Konstanten Versuch schneller als die Hedonistische Tretmühle zu laufen.
  ]
]

= Diskussionsfragen

== Diskussionsfrage 1
#align(horizon)[
  Wie „based“ ist die Parallele zwischen Dorian Gray und modernem Looksmaxxing? 
  
  Ist der heutige Trend zur radikalen körperlichen Selbstoptimierung (Hunter Eyes, Jawline) nur eine moderne Form von Dorian Grays toxischem Narzissmus?
]

== Diskussionsfrage 2
#align(horizon)[
  Wer trägt die größere Schuld an Dorians psychologischem und moralischem Untergang: 
  
  Lord Henry, der ihn gezielt manipulierte und mit seinen hedonistischen Ideen vergiftete, oder Dorian selbst, der sich freiwillig dafür entschied, diese Ideen radikal auszuleben?
]

#show: appendix

#slide(title: [Danke für eure Aufmerksamkeit])[
#align(center)[#box(height: 100%, width: 100%)[
  #place(top + right)[
    #{
      let size = 14pt
      text(size: size)[made with ]
      box(
        radius: 2pt,
        height: size,
        clip: true,
        baseline: 20%,
        image("img/typstlogo.png", fit: "contain")
      )
    }
  ]
  #grid(
    rows: (1fr, auto),
    gutter: 1em,
    align: (top + center, bottom + center),
    image("img/aufmerksamkeitschwein.png"),
    [Danke für eure Aufmerksamkeit]
  )
]]]
