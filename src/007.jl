function solve_007()
    # init sieve vector
    numbers = Set(2:150000)
    primes = Set()

    # run sieve
    for candidate = 2:150000
        for num in numbers
            if num%candidate == 0 && num ≠ candidate delete!(numbers, num) end
        end
        if candidate % 100 == 0 println(candidate) end
    end

    return numbers
end