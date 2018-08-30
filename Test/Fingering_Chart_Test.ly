\version "2.19.82"
\language "english"

#(set-default-paper-size "11x17landscape")
#(set-global-staff-size 25)
#(print-keys-verbose 'baritone-saxophone)

\relative c' {
  \textLengthOn
  <ctqs' e dqs'>1_
  \markup {
    \center-column {
      soprano1
      " "
		\override #'(size . 0.4)
		%\override #'(thickness . 0.15)
       \woodwind-diagram
                  #'soprano-saxophone
                   #'( 
			(cc . (one two three four six))
			(lh . (T))
			(rh . (low-c))
			)
    }
  }

  \textLengthOn
  <cs e d' >1_
  \markup {
    \center-column {
      soprano2
      " "
		\override #'(size . 0.4)
       \woodwind-diagram
                  #'soprano-saxophone
                   #'( 
			(cc . (one two three four six))
			(lh . (T b))
			(rh . (low-c))
			)
    }
  }

  \textLengthOn
  <cqs etqf d'>1_
  \markup {
    \center-column {
      soprano3
      " "
		\override #'(size . 0.4)
       \woodwind-diagram
                  #'soprano-saxophone
                   #'( 
			(cc . (one two three four five))
			(lh . (T))
			(rh . (low-c))
			)
    }
  }

  <cqs g' eqf' bf'>1_
  \markup {
    \center-column {
      alto1
      " "
		\override #'(size . 0.4)
       \woodwind-diagram
                  #'alto-saxophone
                   #'( 
			(cc . (one two three))
			(lh . (TT gis))
			(rh . ())
			)
    }
  }

  <cqs eqf dqf' >1_
  \markup {
    \center-column {
       alto2
       " "
		\override #'(size . 0.4)
       \woodwind-diagram
          #'alto-saxophone
        #'( 
			(cc . (one two three four five))
			(lh . (b))
			(rh . (low-c c))
			)
    }
  }
  <dqf, ctqs' atqs' ds fs>1_\markup {
    \center-column {
      alto3
      " "
		\override #'(size . 0.4)
      \woodwind-diagram
        #'alto-saxophone
        #'( 
			(cc . (one two three four five six))
			(lh . (low-bes))
			(rh . ())
			)
    }
  }

  <fs fqs'>1_\markup {
    \center-column {
      tenor1
      " "
		\override #'(size . 0.4)
      \woodwind-diagram
        #'tenor-saxophone
        #'( 
			(cc . (one two three five six))
			(lh . (cis))
			(rh . ())
			)
    }
  }

  <fs fqs' ctqs' fs>1_\markup {
    \center-column {
      tenor2
      " "
		\override #'(size . 0.4)
      \woodwind-diagram
        #'tenor-saxophone
        #'( 
			(cc . (one two three five six))
			(lh . (b))
			(rh . ())
			)
    }
  }

  <fs fqs' ctqs' gqf'>1_\markup {
    \center-column {
      tenor3
      " "
		\override #'(size . 0.4)
      \woodwind-diagram
        #'tenor-saxophone
        #'( 
			(cc . (one two three five six))
			(lh . ())
			(rh . ())
			)
    }
  }

  <ctqs' dtqs' aqs'>1_\markup {
    \center-column {
      baritone1
      " "
		\override #'(size . 0.4)
      \woodwind-diagram
        #'baritone-saxophone
        #'( 
			(cc . (one two three))
			(lh . (T gis))
			(rh . ())
			)
    }
  }

  <e, eqs' bqs'>1_\markup {
    \center-column {
      baritone2
      " "
		\override #'(size . 0.4)
      \woodwind-diagram
        #'baritone-saxophone
        #'( 
			(cc . (one two three four five))
			(lh . (b))
			(rh . (low-c))
			)
    }
  }

  <ftqs fqs' ctqs' as'>1_\markup {
    \center-column {
      baritone3
      " "
		\override #'(size . 0.4)
      \woodwind-diagram
        #'baritone-saxophone
        #'( 
			(cc . (one two three five six))
			(lh . (low-a))
			(rh . (low-c))
			)
    }
  }
}
