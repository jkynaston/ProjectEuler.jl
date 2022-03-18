using ProjectEuler
using Test

@testset "ProjectEuler.jl" begin
    # Primality test
    @test ProjectEuler.isprime(37)
    @test ProjectEuler.isprime(7919)
    @test !ProjectEuler.isprime(4500)

    # Get smallest divisor 
    @test ProjectEuler.get_smallest_divisor(155077777) == 7919
    @test ProjectEuler.get_smallest_divisor(100000000) == 2
    
    # Reverse digits of an integer
    @test ProjectEuler.reverse_int(155077777) == 777770551

    # Euler's totient
    @test ProjectEuler.totient(110) ≈ 40
    @test ProjectEuler.totient(10) ≈ 4
    @test ProjectEuler.totient(9) ≈ 6
end
