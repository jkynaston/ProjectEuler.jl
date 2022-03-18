function solve_002()
    fib_vec = [1, 2]
    i = 3
    # Generate fibonacci numbers
    while fib_vec[end] < 4000000
        push!(fib_vec, fib_vec[i-1] + fib_vec[i-2]) 
        i += 1
    end
    # Sum even terms
    sum(filter(x -> x % 2 == 0, fib_vec))
end