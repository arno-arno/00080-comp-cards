\version "2.24.0"
\language "english"

\include "..\functions\func.ly"


dummy = {
  %\set Score.autoBeaming = ##f 
  % \override Score.Stem.length = #0
   
  %\omit Score.Stem
   % \omit Score.Flag
  %  \omit Score. Beam
 % \override Score.Stem.direction = #UP
  %  \omit Score.Rest 
  \override Score.Rest.style = #'mensural 
  
  \customFlag
  
 \tempo \markup { Mechanical (
                  \fontsize #-1
                  \rhythm {\customFlag 8}
                  \hspace #-0.6
                  = 92 )}

  \override NoteHead.transparent = ##t
  \nd 8 % B1
  \once \override TimeSignature.X-offset = #2

  \nd 9  % B2

  \nd 3 % B3

  \nd 11 \break % B4 

  \nd 11 % B5

  \nd 9 % B6

    \nd 3 %B7

   \nd 3 \break % B8

  \nd 11 %B9

  \nd 10 %B10

  \nd 2 %B11

  \nd 8 %B12

  \nd 11 %B13

  \nd 3 %B14

  \nd 9 %B15

  \nd 11 %B16

  \nd 11 %B17

  \nd 9 %B18

  \nd 9 %B19

  \nd 10 %B20

  \nd 9 %B21

  \nd 10 %B22

  \nd 5 %B23

  \nd 4 %B24

  \nd 4 %B25
  \break
  \nd 7 %B26

  \nd 7 %B27

  \nd 7 %B28

  \nd 7 %B29
\break
  \nd 7 %B30

  \nd 7 %B31

  \nd 6 %B32

  \nd 7 %B33
\break
  \nd 7 %B34

  \nd 7  %B35 

  \nd 7 %B36

  \nd 7 %B37 
\break
  \nd 7 %B38 

  \nd 7 %B39 

  \nd 6 %B40
  
  \nd 7 %B41 
  }
  
  pianor = {

  \parallelogram #0.1
    \ottava #1 <e''' cs'''' ds'''' e''''>8[ 8 8 8 8 8 8 8]
  
  \ottava #0
   a'8-.\pp g'-. r8  bf'8-.
  r8 r8 r8 r8 b''!-.
  bf'8-.\p  8-. 8-. |
  a'-.\pp r 
    g'-.  b'!-. r r r  r r  b''!--\pp r
    
    a'  r g' r  bf'
    r r r r b''!-. r
  
    a' g' r  b'! r
   r8 r8 bf''-. r8

    \nbar 3
    \ottava #1 \tuplet 2/3{ <e''' cs'''' ds'''' e''''>8-. 8-. }
    \ottava #0
    
    a'8-. r g'-. r  b'!-.
     r r r r  <fs' a''!>-. r
    
    a'-. g'-. r bf'-. r r r <b'! b''!>-. r r
    
    r r
    
    <fs' a'>-. r g'-. b'!-.
    r r r <b'! b''!>-. 
    
    <g' a'>-.r g'-. bf'-. 
    r r r r r <bf' bf''>-. r
    
     \tuplet 2/3{af'8-. \ottava #1 <e''' cs'''' ds'''' e''''>->-. }
    \ottava #0
    
    <af' gf'>8 gf' r bf' 
    r r r r bf''
    
    <af' g' gf'>8  r gf' bf' 
    r r r r  r a''! r
    
    af' r gf' r bf' 
    r r r  r <bf'' bf'> r
    
    gs' fs' r a'!
    r r r aqs''r
    
    gs' fs' r a'
    r r r r <e' g''>
    
    gs' r fs' as'
    r r r r r <a'! a''!>
    
    gs' r fs' r a'
    r r <aqs' aqs''> r
    
    gs' r fs' a'
    r r r r <gs' a''>4
    
    <gs' a''>8 8 8 a' r
    
    <gs' a''>8 8  a' r
    
    <gs' a''>8 a' r <gs' a''>

%_________________________________%

    a' g'  b'!
     r r bf''! r

     a'  g'  bf'
    r  r  b''! r
    
    a'  g'  b'!->-. 
    r r bf''! r
  
   a' g' bf'!->-.
   r r b''! r
    
    a' g' bf'!
     r r  <f'! a''!> r
    
    a' g'  b'!
    r r <bf'! bf''> r 
    
    <fs' a'>  g' bf'
      r <bf' bf''> r
    
    <g' a'> g' b'! 
    r r  <bf' bf''> r
    
    
    <fs' gs'> fs'  a' 
    r r  b''! r
    
    <fs' g' gs'>  fs' a' 
    r r gs'' r
    
    gs' fs' a' 
    r r <a''! a'!> r
    
    gs' fs' as'
    r r aqs''r
    
    gs' fs' as'
    r r <ef' g''> r
    
    gs'  fs' a'!
   r r <as' as''> r
    
    gs' fs' as'
    r <aqs' aqs''> r
    
    gs' fs' as'
    r r  <g'! a''>4
    
    

}

pianol = {
\parallelogram #0.1

  \clef treble
   <e''  cs'' e'>8[ 8 8 8 8 8 8 8]
   \clef bass
   g-.\pp r r 
   a,^\markup{ "pizz."}  b, r c r d
   r r r 
   
    g r r 
    a,-. r bf,-. r c-. r df-- r
    
     g-. r r r
    a,-.  b,!-. r c-. r b,!-. r
    
    g-. r r 
    a,  bf, r c  df r

    \nbar 3
    \nbar 3
    
    g r r r 
    a,  bf, r8 c r8 d! r8
    
    g r r 
    af,  a,! r8 b,! c r8 d!
    
    r r
    
    fs r r 
    bf, r c r b,!
    
    g r r 
    af, r bf, r c r <df df'> r
    
    \tuplet 2/3 { gf8-. r }
    
    gf r r 
    af, bff, r cf r dff
    
    gf r r 
    af, r bf, r cf r df r
    
    gf r r r 
    af, bff, r cf r <bff, bff> r
    
    fs r r
    gs, as, r b, cs r
    
    fs r r
    <gs, g> as, r b, r c
    
    fs r r 
    g,! r gs, r a, r b,
    
    fs r r r
    as, b, r aqs, r
    
    fs r r
    fs, r gs, as, r b,4
    
    b,8 b, b, g r
    
    b, b,  g r
    
    b, g r b,
    
    g r 
   a,8-.  bf,-.  c-.  df-. r
    
    g r 
    a,  b,! c  d! r
    
     g r
    a,  bf,  c  bf, r
    
    g r
    a,-.  b,!-.  c-.  d!-. r
    
    g r
    a,  b,! c d! r
    
    g r
    g,  af,  bf,! c  df
    
    fs r 
    b,!  c  <bf, bf> r
    
    g r  
    gs,  a,  b,  <cs cs'> r
    
    fs r 
    gs, a,  b,  cs r
    
    fs r  
    gs,  as,  b,  c r
    
    fs r 
    gs, a,  b,  <a, a> r
    
    fs r 
    gs, a,!  b, c! r
    
    fs r 
    <gs, g!> a,!  b,  c r
    
    fs r 
    g,!   a,  b, c r
    
    fs r
    bf, c  bqs, r
    
    fs r 
    fs,  gs, a,!  b,4 

}

%%PAPER AND STAFF SIZE AND MARGINS%%
\paper {
  #(layout-set-absolute-staff-size (* 5 mm))
  #(set-paper-size "a4")
   tagline = ##f
}

%%GENERAL STYLE DIRECTIVES%%
\layout {
  \context {
    \type "Engraver_group"
    
    \consists "Time_signature_engraver"
    \consists "Axis_group_engraver"
    %\consists "Span_stem_engraver"
    \name "TimeSig"
    \alias "Staff"
    \override TimeSignature.font-size = #3
    \override TimeSignature.break-align-symbol = ##f
    \override TimeSignature.X-offset =  #ly:self-alignment-interface::x-aligned-on-self
    \override TimeSignature.self-alignment-X = #CENTER
    \override TimeSignature.after-line-breaking =#shift-right-at-line-begin
     \override TimeSignature.style = #'single-digit
  }
  \context {
    \Score
    \accepts TimeSig
  %  \consists "Grid_line_span_engraver"
  %  \consists "Span_stem_engraver"
    \override SpacingSpanner.uniform-stretching = ##t
    \override GridLine.thickness = #0.3
    \override Stem.thickness = #0.4
    proportionalNotationDuration = #(ly:make-moment 1/8)
   % \override SpacingSpanner.strict-note-spacing = ##t
   % tupletFullLength = ##t
    
  }
  \context {
    \Staff
   \remove "Time_signature_engraver"
   % \consists "Grid_point_engraver" %% active les guides
    \consists "Span_stem_engraver"
    %\consists "Grid_line_span_engraver"
    gridInterval = #(ly:make-moment 1/8)
    \override GridLine.thickness = #0.3
   % \override GridPoint.Y-extent = #'(-5 . 5)
  }
}

%%GENERAL SCORE INFORMATION%%
\header {
  title="__ __ __ __ _0_"
  composer = "00000"
}


%%SCORE BEGIN%%
\score 
    {
      <<
            \new TimeSig \dummy

            
%%PIANO%%
            \new PianoStaff 
            \with{
              instrumentName = Draft
       
            midiInstrument = piano} 
            { <<
                \new Staff
                      { \pianor }   
                \new Staff
                      {
                       \pianol }
             >>}

      
      >>
 
    }
%%SCORE END%%
