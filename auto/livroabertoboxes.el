(TeX-add-style-hook
 "livroabertoboxes"
 (lambda ()
   (TeX-run-style-hooks
    "ifthen"
    "mfirstuc")
   (TeX-add-symbols
    "libroskip"
    "filename"
    "filetitle"
    "envskip"))
 :latex)

