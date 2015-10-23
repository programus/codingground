import Data.List

encodeSingle :: [Char] -> (Int, Char)
encodeSingle []     = (0, ' ')
encodeSingle (x:xs) = (length(x:xs), x)

decodeSingle :: (Int, Char) -> [Char]
decodeSingle (n, x) = take n (repeat x)

encode = (map encodeSingle) . group
decode = concat . (map decodeSingle)

main = do
  let enc = encode "aaaaaaaaaabbbbbbbbbccddde"
  print enc
  print (decode enc)
  