# MyST Template for Plain Typst Book

This repository, created by [Freek Pols](https://github.com/FreekPols/) and [Luuk Fröling](https://github.com/Luukfroling) provides a plain Typst book template designed for use with MyST - book theme (JB2). The template creates a PDF document as a [static export](https://mystmd.org/guide/quickstart-static-exports); in particular, it is designed to capture the non-interactive components of website made using the book theme (bundled with MyST, see [here](https://mystmd.org/guide/website-templates#default-web-themes)). This template is designed to help authors quickly set up a structured book project with MyST, ensuring a professional layout and easy customization. The primary use case of this template is to allow authors to easily maintain a single document in two formats; in other words: a website and PDF document using the same source code.

The template features:

- **Cover page**: Includes the book title, a cover figure, and author names.
- **Preface**: Automatically generated from the `description` section in the `myst.yml` file.
- **Table of Contents**: Generated with a depth of 2 by default, can be specified in the myst.yml.

The PDF document contained in the repository in subdirectory `examples/` is generated using this template and will be updated when significant changes are made. A preview of the cover page is shown here:

![](output_preview.png)

## Usage

There are several ways to use this Typst template, described here briefly and non-exhaustively. For a full explanation, see the [documents](https://mystmd.org/guide/creating-pdf-documents#how-to-export-to-pdf). 

### Build using GH actions
Include the following in your `myst.yml` file:

```yaml
  downloads:
    - id: output-pdf1

  exports:
    - format: typst
      template: https://github.com/myst-templates/plain_typst_book.git
      output: export/book.pdf
      id: output-pdf1
```

Include [this file](https://github.com/TUD-JB-Templates/JB2/blob/main/.github/workflows/deploy-pdf-typst.yml) in `.github/workflows`. If you go to the `Actions` tab of your GitHub repository, you can manually trigger the workflow to build the PDF document. The resulting PDF will be available and can be downloaded from the GH-page of your book.

### Build locally
It is assumed you have MyST working on your computer and you can run the commands `myst build --pdf` and `myst start`.

```{warning} should be edited
```
- specify the GitHub repo in your `myst.yml` file as a template (include `*.git` at the end of the URL) or clone the repo and use it locally
- clone or download the repo, navigate your CLI to `./examples/` and run `myst build --pdf` to generate the PDF document; `myst start` will build the website and start a local server to view it
- clone or download the repo and copy the files in root to the working directory of your MyST book project; specify the directory with the files in your `myst.yml` file


## Ideas

File `style.typ` defines the layout and style of the book. We specifically pay attention to the cover page by specifying the page for the cover. We subsequently define the preface page and the table of contents page. Then we define the layout for the content of the book, setting a left margin to 20%.

File `template.typ` 'reads' the content from the `myst.yml` file and makes it available for the style.typ file. 

Files `aside_style.typ` is a file that helps to convert MyST aside to Typst notes.

You can specify a logo, cover and ToC_depth in your `myst.yml` file.

```yaml
  options:
    logo: logo.svg    // replace with your own logo, at top of the paper
    cover: Cover.PNG  // replace with your own cover image
    ToC_depth: 2      // set depth of the table of contents, 2 by default
```

The cover will be placed on the cover page, the logo will be placed in the header of each page.

## License

Content is licensed under [CC-BY-SA](https://creativecommons.org/licenses/by-sa/4.0/).
