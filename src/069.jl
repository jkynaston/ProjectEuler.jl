function solve_069()
    phi = zeros(1000000)
    for i = 1:1000000
        phi[i] = totient(i)
    end
    range = 1:1000000
    fun = range ./ phi
    _, id = findmax(fun)
    return id 
end