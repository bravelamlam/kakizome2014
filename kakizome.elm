import Graphics.Collage (..)
import Graphics.Element (..)
import Signal
import Text (asText, plainText)
import Time (..)


main : Signal Element
main = Signal.map textat time

time =
  Signal.map (((*) 200)  << inSeconds << fst) (timestamp (fps 40))

textat angle = 
  collage 200 200
    [ rotate (degrees angle) (toForm (plainText "Happy New Year!"))
    ]