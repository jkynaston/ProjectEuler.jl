function solve_125(max_num::Int64)
    limit = sqrt(max_num)
    
    seen = Set([])
    sum = 0

    for n = 1:ceil(Int64,limit)
        num = n*n
        for m = n+1:ceil(Int64,limit)
            num += m*m
            if num > max_num
                break
            end
            if num ∉ seen && num == reverse_int(num)
                sum += num
                push!(seen, num)
            end
        end
    end

    return seen, sum
end