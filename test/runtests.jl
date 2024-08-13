using InsertionSort
using Test

@testset "InsertionSort" begin
    @test check_sort(100) == true
end