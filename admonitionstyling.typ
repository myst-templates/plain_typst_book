// admonition.typ

// Toggle via myst.yml → options.break_admonitions: true/false (default: true)
#let breakable_admonitions = true
  // if options.break_admonitions == false { false } else { true }

// Kleuren per type
#let admonition-colors = (
  note: rgb(220, 235, 255),
  tip:  rgb(220, 255, 220),
  warning: rgb("#ef2e02"),
  important: rgb("#11d466"),
  caution:  rgb(255, 235, 180),
)

// Titels per type
#let admonition-titles = (
  note: "Note",
  tip: "Tip",
  warning: "Warning",
  important: "Important",
  caution: "Caution",
)

// Icoon per type (Unicode emoji; werkt out-of-the-box)
#let admonition-icons = (
  note: "📝",
  tip: "💡",
  warning: "⚠️",
  important: "❗",
  caution: "🚧",
)

// Algemene builder
#let admonition(body, kind: "note", title: none, icon: none) = {
  let bg = admonition-colors.at(kind, default: luma(240))
  let heading = if title != none { title } else { admonition-titles.at(kind, default: kind) }
  let mark = if icon != none { icon } else { admonition-icons.at(kind, default: "ℹ️") }

  // Breekbare container zodat grote admonitions over pagina's mogen
  block(
    breakable: breakable_admonitions,
    stroke: 0.5pt + gray,
    inset: 8pt,
    fill: bg,
    radius: 4pt,
  )[
    // Headerregel met icoon + titel in bold
    #block(inset: 4pt, bottom-edge: 6pt)[
      #text(10pt, strong([#mark  #heading]))
    ]
    // Inhoud
    #body
  ]
}

// Syntactic sugar: #note[..], #warning[..], etc.
#let note(body, title: none, icon: none) = admonition(body, kind: "note", title: title, icon: icon)
#let tip(body, title: none, icon: none) = admonition(body, kind: "tip", title: title, icon: icon)
#let warning(body, title: none, icon: none) = admonition(body, kind: "warning", title: title, icon: icon)
#let important(body, title: none, icon: none) = admonition(body, kind: "important", title: title, icon: icon)
#let caution(body, title: none, icon: none) = admonition(body, kind: "caution", title: title, icon: icon)
