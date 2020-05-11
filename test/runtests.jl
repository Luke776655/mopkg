using mopkg
using Test

@testset "mopkg.jl" begin
    @test example_f(5) == 125
    @test example_f(-2) == -8
end
