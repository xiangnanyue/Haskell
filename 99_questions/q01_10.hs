{-last element of a list-}

import Data.List 
import Data.Maybe 

myLast :: [a] -> Maybe a

myLast [] = Nothing
myLast [x] = Just x
myLast (hd:tl) = myLast tl

{-Find the last but one element of a list.-}
myButLast :: [a] -> Maybe a

myButLast [] = Nothing
myButLast [x, y] = Just x
myButLast (ele:hd) = myButLast hd  

{-(*) Find the K'th element of a list. 
The first element in the list is number 1.-}
elementAt :: [a] -> Int -> Maybe a

elementAt [] k = Nothing
elementAt (x:lis) 1 = Just x
elementAt (x:lis) k = elementAt lis (k-1)
 
{-(*) Find the number of elements of a list.-}
myLength :: [a] -> Int

myLength [] = 0 
myLength (ele:lis) = myLength lis + 1

{-(*) Reverse a list.-}
myReverse :: [a] -> [a]

myReverse [] = []
myReverse [x] = [x]
myReverse (ele:lis) = myReverse lis ++ [ele]

{-*) Find out whether a list is a palindrome. 
A palindrome can be read forward or backward; e.g. (x a m a x).-}
---isPalindrome :: [a] -> Bool
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)

isPalindrome' []  = True
isPalindrome' [_] = True
isPalindrome' xs  = (head xs) == (last xs) && (isPalindrome' $ init $ tail xs)

myPalindrome [] = True
myPalindrome [x] = True
myPalindrome (x:lis) = if x == last lis
                          then True && (myPalindrome $ init lis)
                       else False

{-
Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).

Example:

* (my-flatten '(a (b (c d) e)))
(A B C D E)
-}                     

data NestedList a = Elem a | List [NestedList a]

myflatten :: NestedList a -> [a]

myflatten (Elem a)   = [a]
myflatten (List [])     = []
myflatten (List (x:xs)) = myflatten x ++ myflatten (List xs)


{-
compress '(a a a a b c c a a d e e e e)
-}
compress :: Eq a => [a] -> [a]
compress = map head . group

