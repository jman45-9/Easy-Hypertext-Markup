module Main where

import Paragraph

main :: IO ()
main = do
        let test = Paragraph.newParagraph ["paragraph", "content", "lorem ipsum", "color", "red", ";"]
        print test
