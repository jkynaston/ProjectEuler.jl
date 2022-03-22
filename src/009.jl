function solve_009()

    # Just gonna brute force this one!
    for a = 1:1000
        for b = 1:1000
            for c = 1:1000
                if a+b+c == 1000 && a^2 + b^2 == c^2 
                    return (a,b,c)
                    break
                end
            end
        end
    end

end