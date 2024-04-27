\version "2.18.0"

\header {
  % The following fields are centered
  title = "Translation of the Relics of St. Nicholas, May 9th"
  subtitle = "Kontakion, Tone 3"
  subsubtitle = "Obikhod, CCCC"
  % instrument = "Instrument"
  tagline = ""

  % The following fields are right-aligned on the right side
  % composer = "Composer"
  arranger = "rearranged by JCS"
  }

\paper {
 #(set-paper-size "letter")
 top-margin = 0.5\in
}

global = {
  \key g \major
  \set Score.timing = ##f 
}

sopMusic = \relative c' {
e4 fis g g g fis g a b b b2 \bar "|"
b4 b b b\breve b4 a2( g4) fis e2 \bar "|"
}

altoMusic = \relative c' {
b4 d d d d d d fis g g g2  \bar "|"
g4 g g g\breve g4 d2. d b2 \bar “|”
}

tenorMusic = \relative c {
g'4 a b b b a b d d d d2 \bar "|"

}

bassMusic = \relative c {


}

Words = \lyricmode {
Ri- sing like a star from the East to the West. 
Your Re- lics bless the o- cean by your pas- sage St. Ni- cho- las
}


\score {
  \new ChoirStaff <<
    \new Staff = "women" <<
      \new Voice = "sopranos" {
        \voiceOne
        << \global \sopMusic >>
      }
      \new Voice = "altos" {
        \voiceTwo
        << \global \altoMusic >>
      }
    >>
    \new Lyrics = "altos"
    \new Staff = "men" <<

      \clef bass
      \new Voice = "tenors" {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice = "basses" {
        \voiceTwo << \global \bassMusic >>
      }
    >>
    \context Lyrics = "altos" \lyricsto "altos" \Words
  >>

% Directives needed for no time signature - harmonized chant and to
% generate MIDI output with the music.

  \layout {
   indent = 0
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
  \midi {
    \tempo 4 = 144
  }
}



%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.13.10, 2.13.16, 2.13.18, 2.13.20, 2.13.27,
2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44,
2.13.46, 2.13.48, 2.13.51, 2.14.0, 2.15.7, 2.15.9, 2.15.10, 2.15.16,
2.15.17, 2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39,
2.15.40, 2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6,
2.17.11, 2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25,
2.17.27, 2.17.29, 2.17.97, 2.18.0
%}
