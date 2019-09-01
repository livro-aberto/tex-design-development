(TeX-add-style-hook
 "livroabertoboxes"
 (lambda ()
   (TeX-run-style-hooks
    "ifthen"
    "mfirstuc"
    "anyfontsize")
   (TeX-add-symbols
    "libroskip"
    "filename"
    "filetitle"
    "envskip"))
 :latex)

