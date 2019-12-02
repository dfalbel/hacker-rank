is_odd x = do
    let (_ , pos) = x
    if mod pos 2 == 0
        then True
        else False

get_odd_positions lst = do
    let lst2 = zip lst [0..] 
    let lst3 = filter is_odd lst2
    map fst lst3

main = do
    x <- readLn :: IO Int
    b <- getContents
    let lst = map read (lines b) :: [Int]
    let res = get_odd_positions lst
    mapM_ print res