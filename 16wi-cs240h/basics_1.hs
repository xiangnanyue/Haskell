{- http://www.scs.stanford.edu/16wi-cs240h/slides/basics.html -}

x = 2                   -- Two hyphens introduce a comment
y = 3                   --    ...that continues to end of line.
main1 = let z = x + y    -- let introduces local bindings
       in print z       -- program will print 5

add arg1 arg2 = arg1 + arg2   -- defines function add
five = add 2 3                -- invokes function add

main2 = print (add 2 3)  -- ok, calls print with 1 argument, 5
                        -- compound expression is wrapped by ()

safeDiv x y =
    let q = div x y        -- safe as q never evaluated if y == 0
    in if y == 0 then 0 else q  
main3 = print (safeDiv 1 0) -- prints 0

main4 = let x = x + 1  -- introduces new x, defined in terms of itself
       in print x     -- program "diverges" (i.e., loops forever)

factorial n = if n > 1
            then n * factorial (n-1)
            else 1

-- however this factorial requires more space 
-- Tail recursion: acc*n' has to be calculated before

factorial' n = let loop acc n' 
                        = if n' > 1
                            then loop (acc * n') (n' - 1)
                            else acc
                in loop 1 n

