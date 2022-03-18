include("useful_functions.jl")

function solve_003()
    N = 600851475143
    while true
        k = get_smallest_divisor(N)
        N::Int64 = N/k
        !isprime(N) || break
    end
    return N
end