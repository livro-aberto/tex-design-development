(TeX-add-style-hook
 "livroabertoheadings"
 (lambda ()
   (TeX-run-style-hooks
    "ifthen")
   (TeX-add-symbols
    '("arrange" 1)
    '("know" 1)
    '("practice" 1)
    '("explore" 1)
    '("ChapNoNumTitle" 1)
    '("ChapNumTitle" 1)
    "chapterillustration"
    "chapterwhat"
    "chapterbecause"
    "leftpagenumber"
    "rightpagenumber"
    "drawpage"
    "leftpagetab"
    "rightpagetab"
    "exercise"
    "filename"
    "filetitle"
    "currentcolor"))
 :latex)

