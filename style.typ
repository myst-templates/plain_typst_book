  
#let leftCaption(it) = {
  set text(size: 8pt)
  set align(left)
  set par(justify: true)

  // Within the context of the element, you may use the counter
  context(it, {
    text(weight: "bold")[#it.supplement #it.counter.display(it.numbering).]
  })

  h(4pt)
  set text(fill: black.lighten(20%), style: "italic")
  it.body
}


#let template(
  // FRONTPAGE.
  title: "Book Title",
  subtitle: none,
  authors: "Your name",
  cover: "path",            // <— path to cover "images/cover.png"
  cover_width: 12cm,    
  
  // PREFACE
  description: "description",

  // SPECIFICATION
  paper-size: "a4",       // https://typst.app/docs/reference/layout/page/#parameters-paper
  margin: (),                          
  
  // A color for the theme of the document
  theme: red.darken(30%),
  // The book's content.
  body
) = {
  
  set page(
    numbering: none,
    paper-size,
    ) //numbering off until first chapter
  
  set heading(numbering: (..args) => {
    let nums = args.pos()
    let level = nums.len()
    if level == 1 {
      [#numbering("1.", ..nums)]
    } else {
      [#numbering("1.1.1", ..nums)]
    }
  })

  // Set figure numbering to x.y where x is chapter number and y is figure number within chapter

  set figure(numbering: (..args) => {
    // get current chapter number (first level of heading)
    let chapter = counter(heading).display((..nums) => nums.pos().at(0)) // nums is array of all levels, at(0) is first level, display formats it.  
    let fig = counter(figure).display("1")    // counter counts, display formats it
    [#chapter.#fig]
  })
  

  // Configure equation numbering and spacing.
  set math.equation(numbering: (..args) => {
    let chapter = counter(heading).display((..nums) => nums.pos().at(0))
    [(#chapter.#numbering("1)", ..args.pos())]
  })
  show math.equation: set block(spacing: 1em)


  // Configure lists.
  set enum(indent: 10pt, body-indent: 9pt)
  set list(indent: 10pt, body-indent: 9pt)



// COVERPAGE
  // Title, subtitle, 
  align(center, text(17pt, weight: "bold", fill: theme, title))
  if subtitle != none {
    parbreak()
    box(text(14pt, fill: gray.darken(30%), subtitle))
  }

    if cover != none {
      v(1em)
      align(center, image(cover, width: cover_width))
    }

  //author
  v(1em)

  // authors in gray
  if authors != none {
  place(bottom + right, 
    text(12pt, fill: gray.darken(50%), authors)
  )

  }


// PREFACE, BASED ON DESCRIPTION
  pagebreak()
  if description != none {
    place(top + left, 
      text(14pt, fill: red.darken(50%), "Preface")
    )
    v(1em)
    align(center, box(width: 50%, text(11pt, fill: gray.darken(30%), description)))
  }


//OUTLINE OF THE BOOK
  pagebreak()
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(indent: auto)


//RESETING NUMBERING
  show heading.where(level: 1): it => {
    pagebreak()
    // Reset all counters with a new chapter
    counter(figure).update(0)                // all figures (irrespective of kind)
    counter(figure.where(kind: table)).update(0) // specific for tables
    counter(math.equation).update(0)

    it
  }


// PAGE LAY OUT OF CONTENT
  set page(
    numbering: "1",         //turn on numbering
    margin: (left: 20%),    //set left margin
    )   

  counter(page).update(1)   //set number to 1


  // Display the book's contents.
  [#body]
}