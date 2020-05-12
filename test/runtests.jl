using mopkg
using Test

@testset "Powells minimiation method test" begin
    @testset "tolerance" begin
        for tol in [1e-1, 1e-3, 1e-5, 1e-7]
            @test isapprox(line_optimize(x->(x-2)^2+1, 5; eps=tol)[1], 2, atol=tol)
            @test isapprox(line_optimize(x->(x-2)^2+1, 5; eps=tol)[2], 1, atol=tol)
        end
    end
end
