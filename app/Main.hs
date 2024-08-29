module Main where

newParagraph :: [String] -> String
newParagraph [] = "ERROR, MISSING SEMICOLON"
newParagraph (x:ls) = case x of 
        "paragraph" -> "<p>" ++ newParagraph ls 
        "content" -> head ls ++ newParagraph (tail ls)
        ";" -> "</p>"
        _ -> "error, unknown keyword: " ++ x
main :: IO ()
main = do
        let test = newParagraph ["paragraph", "content", "lorem ipsum",";"]
        print test
