(TeX-add-style-hook
 "aluno"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("memoir" "extrafontsizes" "twoside" "11pt" "openright" "final")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("tcolorbox" "skins" "breakable") ("fontenc" "T1") ("babel" "brazil")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "estatistica1"
    "memoir"
    "memoir11"
    "tcolorbox"
    "cmap"
    "fontenc"
    "amsmath"
    "amssymb"
    "amstext"
    "babel"
    "times"
    "sphinx"
    "geometry"
    "sphinxcontribtikz"
    "hyperref"
    "hypcap"
    "makeidx"
    "amsfonts"
    "amsthm"
    "tikzmacros"
    "livroabertopage"
    "livroabertofonts"
    "livroabertocolors"
    "livroabertoheadings"
    "livroabertoboxes"
    "livroabertolists"
    "livroaberto"
    "multicol"))
 :latex)

