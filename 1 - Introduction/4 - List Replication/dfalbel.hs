import Control.Monad

printn 0 el = return()
printn n el = do
    print (read el :: Int)
    printn (n-1) el


main = do
    n <- readLn :: IO Int
    c <- getContents
    mapM_ (printn n) (take 10 (lines c)) 

