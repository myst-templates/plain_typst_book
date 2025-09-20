# Readme 

![](output_preview.png)

## plain_typst_book

This repository, created by [Freek Pols](https://github.com/FreekPols/) and [Luuk Fröling](https://github.com/Luukfroling) provides a plain Typst book template designed for use with MyST, particularly with the book theme. The template features:

- **Cover page**: Includes the book title, a cover figure, and author names.
- **Preface**: Automatically generated from the `description` section in the `myst.yml` file.
- **Table of Contents**: Generated with a depth of 2 for clear navigation.

This template helps you quickly set up a structured book project with MyST and Typst, ensuring a professional layout and easy customization.

## Ideas
style.typ defines the layout and style of the book. We specifically pay attention to the cover page by specifying the page for the cover. We subsequently define the preface page and the table of contents page. Then we define the layout for the content of the book, setting a left margin to 20%.

template.typ 'reads' the content from the myst.yml file and makes it available for the style.typ file. 

aside.typ is a file that helps to convert MyST aside to Typst notes.

You can specify a logo and a cover in your myst.yml file.

  options:
    logo: logo.svg
    cover: Cover.PNG

The cover will be placed on the cover page, the logo will be placed in the header of each page.

**License:**  
Content is licensed under [CC-BY-SA](https://creativecommons.org/licenses/by-sa/4.0/).
