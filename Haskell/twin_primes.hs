-- This can be run by downloading the ghc interpreter
-- called the glasgow haskell compiler interpreter
-- and is run by the ghci command. Alternatively 
-- I am sure that you could most likely run ghc file.hs

-- finite list
-- [1..20]

--sum [1..20]

--map (^2) [1..20]

--filter even [1..20]

-- We can be fancy and do all that we
-- did above in one run. As we can see
-- here haskell has very similar syntax
-- to lisp when we are nesting functions, 
-- though the oper paren is not always
-- needed like it is in lisp

-- sum (map (^2) (filter even [1..20]))

-- Now we can talk about infinite data structures.
-- Some examples of operations that will not work
-- with infinite data structures are
--
-- sum [1..]

-- We can produce and infinite amount of evens using
--
-- filter even [1..]
--
-- Though this is not extremly helpful 

-- The filter command can come to the rescue slightly though 
-- still doesn't let our infinite operation come to a close
--
-- filter (<100) [1..]

-- What does work is when we use the take command

-- take 20 [1..]

-- We can write small functions easily 

factors n = [x | x <- [1..n], mod n x == 0]

-- factors 7

prime n = factors n == [1,n]

-- prime 7

-- We can use this function to produce an infinite list
-- of primes very easily 

--filter prime [1..]

-- A much faster way to do this would be the Sieve of Erastothenes
-- algorithm

sieve (p:ps) = p : sieve[x | x <- ps, mod x p /= 0]

primes = sieve [2..]

-- And with the take command we can get as many primes
-- as we want very quickly in a lazy evaluated infinite
-- dataset fashion

-- take 100 primes

-- Or we could take all of the primes WHILE the primes 
-- are less than 100

-- take While (<100) primes

-- If we want to run this program in a haskell interpreter
-- without copy and pasting we can run ghci twin_prims.hs
-- and this program will be evaluated then we will have
-- access to the interpreter environment

-- Finally we will show how to infinitely generate the twin primes

twin (x,y) = y==x+2

twins = filter twin (zip primes (tail primes))

-- twins 
