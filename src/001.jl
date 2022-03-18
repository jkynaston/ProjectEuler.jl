function solve_001()
    sum = 0
    for k = 1:999
        if k % 3 == 0 || k % 5 == 0
            sum += k
        end
    end
    return sum
end