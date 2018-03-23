using Cincinnati
using Base.Test

# write your own tests here
@testset "Basic tests" begin
    @test Cincinnati.greeting("David") == "Hello, David"
    @test Cincinnati.greeting("Jeff") == "Hello, Jeff"
end

@testset "More tests" begin
    @test Cincinnati.greeting("David") == "Hello, David"
    @test Cincinnati.greeting("Jeff") == "Hello, Jeff"
end

@testset "Even more tests" begin
    @test Cincinnati.greeting("David") == "Hello, David"
    @test Cincinnati.greeting("Jeff") == "Hello, Jeff"
end

@testset "Goodbye tests" begin
    @test Cincinnati.bye("David") == "Bye, David!"
end

@testset "Exported names" begin
    @test bye("David") == "Bye, David!"
end
