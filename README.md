# MyST Template for Plain Typst Book

This repository provides a plain Typst book template designed for use with MyST and Jupyter Book 2 to create a PDF document. It is designed to capture the non-interactive components of websites made using the book theme (bundled with MyST, as [described here](ttps://mystmd.org/guide/website-templates#default-web-themes)) for use as a [static export](https://mystmd.org/guide/quickstart-static-exports). In addition, the template is designed to help authors quickly set up a structured book project with MyST or Jupyter Book 2 while ensuring a professional layout and easy customization. The primary use case of this template is to allow authors to easily maintain a single document in two formats; in other words: a website and PDF document using the same source code.

The template features:

- **Cover page**: Includes the book title, a cover figure, and author names. The cover figure can be vertically positioned (`coverpostion`) and resized (`cover_width`)
- **Preface**: A preface which is specified using the `preface` key.
- **Table of Contents**: Generated with a depth of 2 by default, can be specified in the myst.yml, the ToC can be toggled on/off using `show_ToC`
- **Logo**: A logo at the top of each page, with adjustable width (`logo_width`)
- **Adjustable layout**: Customizable page size (`papersize`), margins (`_top _bottom _left _right`), fonts (`fontstyle` and `fontsize`), line spacing (`linespacing`) and toggling pagenumber (`show_pagenumber`), justification and color themes (`colortheme` and `colorheadings`).

These features are illustrated in a simple example book shared as part of this repository:

- The website is deployed using GitHub Pages at: [myst-templates.github.io/plain_typst_book](https://myst-templates.github.io/plain_typst_book/).
- The PDF can be downloaded using the "Download PDF" button on the website.
- The source code is available in the `examples/` subdirectory of this repository.

## Template Design

The layout and style of the book are defined in file `style.typ`, where the cover page is specified, followed by the preface and table of contents pages. Next, the layout for the book contents is set, using a left margin of 20%.

File `template.typ` "reads" the content from the `myst.yml` file and makes it available for `style.typ`. File `aside_style.typ` helps to convert MyST aside to Typst notes.

## Template Options

Template options are specified under the appropriate `exports` entry in the `myst.yml` file, or through utilizing `extends` (see [extends](#define-options-in-a-separate-file)). When unspecified, default values defined in `style.typ` are used. The available options and types are listed and illustrated in file `example/export.yml`.

The image for `cover` will be placed on the cover page, whereas the image for `logo` will be placed in the header of each content page.

### Define options in a separate file

It is possible to include all options for this template in a separate file using `extends`. This is illustrated in the example book of this repository using file `example/export.yml`, specified in `myst.yml` as follows:

```yaml
extends: 
  - export.yml
```

## Using the Template to Build a PDF

There are several ways to use this Typst template, described here briefly and non-exhaustively. For a full explanation, see the [MyST documentation](https://mystmd.org/guide/creating-pdf-documents#how-to-export-to-pdf). 

### Build using GitHub Actions

A complete working example is provided in this repository: `.github/workflows/deploy.yml`. By copying this file to your own repository, adjusting the export and paths accordingly and enabling GitHub Actions in your repository settings, the PDF document will be built automatically on each push to the main branch. The generated PDF will be available as an artifact in the Actions tab of your repository; see the example book in this repository in order to enable static downloads and action buttons for downloading the PDF.

### Build locally

To use the Typst template in your own MyST book project, simply use the Git URL for the `template` field, as illustrated here:

```yaml
project:
...
  exports:
    - format: typst
      template: https://github.com/myst-templates/plain_typst_book.git
      output: exports/book.pdf
      id: output-pdf
...
```

Then run `myst build --pdf` followed by `myst start` (replace `myst` with `jupyter-book` if you are using Jupyter Book 2).

Tip: remember to build the PDF _before_ building the website, otherwise the (new) PDF file will not be included as a static asset in the website build.

This assumes you have Typst installed on your system. In case you are having difficulty generating the PDF, try building the example book included in this repository first:

- clone or download this repository
- navigate your CLI to `./examples/`
- run `myst build --pdf`

## Acknowledgements

This template is created by [Freek Pols](https://github.com/FreekPols/) and [Luuk Fröling](https://github.com/Luukfroling). [Robert Lanzafame](https://github.com/rlanzafame) helped with documentation.

## License

Content is provided with an [MIT License](https://opensource.org/license/mit).
