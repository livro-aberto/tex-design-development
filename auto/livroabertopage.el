(TeX-add-style-hook
 "livroabertopage"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "ifthen"
    "booktabs"
    "url"
    "graphicx"
    "forloop"
    "lipsum"
    "microtype"
    "suffix"
    "etoolbox"
    "refcount"
    "xcolor"
    "multicol"
    "blindtext"
    "cleveref"
    "tikz"
    "tikzpagenodes"
    "environ")
   (TeX-add-symbols
    "filename"
    "filetitle"))
 :latex)

