hello 0 = return()
hello n = do
    putStrLn "Hello World"
    hello(n-1)

main :: IO()
main = do
    n <- readLn :: IO Int
    hello(n)