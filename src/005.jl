function solve_005()
    D = Dict{Int64, Int64}()
    for i = 1:20 
        D[i] = 0
    end
    for n = 4:20
        V = get_prime_factors(n)
        for p = 1:20
            multiplicity = sum(V.==p)
            if multiplicity > D[p] D[p] = multiplicity end
        end
    end
    prod = 1
    for p = 1:20
        prod *= p^D[p]
    end
    return prod 
end