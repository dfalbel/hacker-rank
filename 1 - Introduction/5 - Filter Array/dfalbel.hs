print_if_less_than x y = do
    if(y < x)
    then print(y)
    else return()

main = do
    x <- readLn :: IO Int
    b <- getContents
    let numbers = map read (lines b) :: [Int]
    mapM_ (print_if_less_than x) numbers