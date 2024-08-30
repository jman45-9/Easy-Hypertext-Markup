module Paragraph
(
        newParagraph
) where

import Style

newParagraph :: [String] -> String
newParagraph [] = " ERROR MISSING SEMICOLON "
newParagraph (x:ls) = case x of 
        "paragraph" -> "<p " ++ processStyle ls ++ ">" ++ newParagraph ls 
        "content" -> head ls ++ newParagraph (tail ls)
        ";" -> "</p>"
        _ -> "" ++ newParagraph ls

