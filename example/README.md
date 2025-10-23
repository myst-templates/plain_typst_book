#  README

This is the README file for the example book illustrating the usage of the MyST template `plain_typst_book`. It is located in subdirectory `example/`. This README is not included in the PDF export of the template, which uses Typst.

Here we do not define an export in the `myst.yml` file but make use of the following option in the myst.yml file:

```yml
extends:
  - export.yml
```

In the `export.yml` file we include the export, including optional settings allowed for the template.yml file:

```{literalinclude} export.yml
```