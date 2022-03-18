function isprime(n::Int64)
    if n <= 3
        return n > 1
    elseif n % 2 == 0 || n % 3 == 0
        return false
    end
    i = 5
    while i^2 <= n
        if n % i == 0 || n % (i+2) == 0
            return false
        end
        i += 6
    end
    return true
end

function get_smallest_divisor(n::Int64)
    k = 2
    while n % k ≠ 0
        k += 1
    end
    return k
end

function reverse_int(n::Int64)
    return parse(Int, reduce(string, digits(n)))
end

function totient(n::Int64)
    result::Float64 = n
    p = 2
    while p*p <= n
        if n % p == 0
            while n % p == 0
                n = n//p
            end
            result *= (1.0 - (1.0 / p)) 
        end
        p += 1
    end
    
    if n > 1
        result *= (1.0 - (1.0 / n))
    end
    
    return result
end