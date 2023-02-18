\version "2.24.0"

customFlag = {
  \override Score.Flag.stencil = #ly:text-interface::print
  \override Score.Flag.text = \markup {\raise #-0.2 \beam #1.0 #0.05 #0.5 }
}

nbar = #(define-music-function (number) (integer?)
   #{ \stopStaff
      \once \override Staff.BarLine.bar-extent = #'(-2 . 2)
      \once \override Staff.StaffSymbol.line-count = #0 
    % \omit Staff.Stem
     % \omit Staff.Beam
    %  \omit Staff.Flag
      
      \startStaff
      \xNotesOn
    \repeat unfold #number {r8}
    \xNotesOff
    \undo \omit Staff.Stem
    \undo \omit Staff.Beam 
    \undo \omit Staff.Flag
    \stopStaff
    \startStaff #}) 

hb = {
  \omit Staff.BarLine
}
sb = {
 \undo  \omit Staff.BarLine
}


nd =   #(define-music-function (number) (integer?)
         #{
          #(time (cons number 8))
           \repeat unfold $number {s8} 
         #})

harm = \tweak style #'harmonic \etc

diff-note = #(lambda (grob) 
               (if (eqv? (ly:grob-property grob 'style) )
                   (ly:stencil-scale 
                      (ly:note-head::print grob) 1 2)
                   (ly:note-head::print grob)))


diff = {
    \override NoteHead.stencil = #diff-note
   \override Accidental.font-size = #2
 }
 
 %%DYNAMICS%%
parallelogram = #(define-music-function (num) 
(rational?)
#{ \override NoteHead.stencil = 
  #(ly:make-stencil
    '(path 0.1
        (rmoveto 0 0.25
         lineto 1.3125 0.75 
         lineto 1.3125 -0.25 
         lineto 0 -0.75)
         round
         round
         #t)
    (cons 0 1.3125)
    (cons -.75 .75)) #} )
  
 
 