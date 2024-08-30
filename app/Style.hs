module Style 
(
        processStyle
) where

processStyle :: [String] -> String
processStyle [] = " ERROR MISSING SEMICOLON "
processStyle (x:ls) = case x of
        "color" -> "color=" ++ head ls ++ processStyle (tail ls)
        ";" -> ""
        _ -> processStyle ls
