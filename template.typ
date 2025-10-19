#import "@preview/marge:0.1.0"
#import "style.typ": template
#import "aside_style.typ": aside
#show: template.with(

// title
  title: "[-doc.title-]",

// subtitle
[# if doc.subtitle #]
  subtitle: "[-doc.subtitle-]",
[# endif #]

// authors
[# if doc.authors #]
  authors: "[# for author in doc.authors #][- author.name -][# if not loop.last #], [# endif #][# endfor #]",
[# endif #]

// logo for top page
[# if options.logo #]
  logo: "[-options.logo-]",
[# endif #]

// specify the with of the logo
[# if options.logo_width #]
  logo_width: [-options.logo_width-]%,
[# endif #]

// cover picture
[# if options.cover #]
  cover: "[-options.cover-]",
[# endif #]

//specify depth of table of contents
[# if options.ToC_depth #]
  ToC_depth: [-options.ToC_depth-],
[# endif #]


[# if options.papersize #]
  paper-size: "[-options.papersize-]",
[# endif #]

[# if options.colortheme #]
  theme: [-options.colortheme-],
[# endif #]

[# if options.fontstyle #]
  font: "[-options.fontstyle-]",
[# endif #]

[# if options.fontsize #]
  fontsize: [-options.fontsize-]pt,
[# endif #]

  description: "[-doc.description-]",

)



[-IMPORTS-]

[-CONTENT-]

[# if doc.bibtex #]
#{
  show bibliography: set text(8pt)
  bibliography("[-doc.bibtex-]", title: text(10pt, "References"), style: "apa")
}
[# endif #]
