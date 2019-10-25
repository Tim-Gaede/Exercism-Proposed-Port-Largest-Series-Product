#=
Tests for the largest-series-product exercise

Implementation note:
In case of invalid inputs to the 'largest_product' function
your program should raise a ValueError with a meaningful error message.

Feel free to reuse your code from the 'series' exercise!

=#
using Test

include("largest_series_product.jl")

# Tests adapted from `problem-specifications//canonical-data.json` @ v1.2.0

println("\n"^2, "-"^60, "\n"^3)

@testset "Finds the largest product if span equals length" begin
    @test largest_product("29", 2) == 18
end
println()

@testset "Can find the largest product of 2 with numbers in order" begin
    @test largest_product("0123456789", 2) == 72
end
println()

@testset "Can find the largest product of 2" begin
    @test largest_product("576802143", 2) == 48
end
println()

@testset "Can find the largest product of 3 with numbers in order" begin
    @test largest_product("0123456789", 3) == 504
end
println()

@testset "Can find the largest product of 3" begin
    @test largest_product("1027839564", 3) == 270
end
println()

@testset "Can find the largest product of 5 with numbers in order" begin
    @test largest_product("0123456789", 5) == 15120
end
println()

@testset "Can get the largest product of a big number" begin
    numString = "73167176531330624919225119674426574742355349194934"
    @test largest_product(numString, 6) == 23520
end
println()

@testset "Reports zero if the only digits are zero" begin
    @test largest_product("0000", 2) == 0
end
println()

@testset "Reports zero if all spans include zero" begin
    @test largest_product("99099", 3) == 0
end
println()

@testset "Rejects span longer than string length" begin
    @test_throws DomainError largest_product("123", 4)
end
println()

@testset "Reports 1 for empty string and empty product 0 span" begin
    @test largest_product("", 0) == 1
end
println()

@testset "Reports 1 for nonempty string and empty product 0 span" begin
    @test largest_product("123", 0) == 1
end
println()

@testset "Rejects empty string and nonzero span" begin
    @test_throws DomainError largest_product("", 1)
end
println()

@testset "Rejects invalid character in digits" begin
    @test_throws ArgumentError largest_product("1234a5", 2)
end
println()

@testset "Rejects negative span" begin
    @test_throws DomainError largest_product("12345", -1)
end
println()


@testset "Project Euler big number" begin
    series = (
        "73167176531330624919225119674426574742355349194934969835203127745" *
        "06326239578318016984801869478851843858615607891129494954595017379" *
        "58331952853208805511125406987471585238630507156932909632952274430" *
        "43557668966489504452445231617318564030987111217223831136222989342" *
        "33803081353362766142828064444866452387493035890729629049156044077" *
        "23907138105158593079608667017242712188399879790879227492190169972" *
        "08880937766572733300105336788122023542180975125454059475224352584" *
        "90771167055601360483958644670632441572215539753697817977846174064" *
        "95514929086256932197846862248283972241375657056057490261407972968" *
        "65241453510047482166370484403199890008895243450658541227588666881" *
        "16427171479924442928230863465674813919123162824586178664583591245" *
        "66529476545682848912883142607690042242190226710556263211111093705" *
        "44217506941658960408071984038509624554443629812309878799272442849" *
        "09188845801561660979191338754992005240636899125607176060588611646" *
        "71094050775410022569831552000559357297257163626956188267042825248" *
        "3600823257530420752963450")
    @test largest_product(series, 13) == 23_514_624_000
end
