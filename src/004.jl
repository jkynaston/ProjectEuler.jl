function solve_004()
    # Get all products of three digit numbers
    prods = zeros(Int64, 900, 900)
    for i=100:999, j=100:999
        prods[i-99, j-99] = i*j
    end
    palindromes = filter(x -> x==reverse_int(x), prods)
    return maximum(palindromes)
end