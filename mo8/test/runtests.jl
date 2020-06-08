using mo8, Test

@testset "hillclimb" begin
	f = x-> x^4 + 3x^3 + x^2 + sin(x)
	a, b = -10, 10
	@test abs(mini(f, a, b) + 1.97) <= 0.01

	f = x-> x^2
	a, b = -5, 5
	@test abs(mini(f, a, b)) <= 0.01
end
