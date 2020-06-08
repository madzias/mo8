module mo8


"
Funkcja oblicza minimum zadanej funkcji na zadanym przedziale
Przykład: mini(x -> x^2, -5, 5)"




function mini(f, a, b, ϵ = 1e-5)
	ρ = (3-sqrt(5))/2
	w1 = a + (1.0 - ρ)*(b - a)
	w2 = a + ρ*(b - a)
	wL = min(w1, w2)
	wP = max(w1, w2)
	a1 = a
	b1 = b
	while abs(b1-a1) > ϵ
		if f(wL) < f(wP)
			b1 = wP
			wP = wL
			wL = b1 - ρ*(b1 - a1)
		else
			a1 = wL
			wL = wP
			wP = a1 + ρ*(b1 - a1)
		end
		wP1, wL1 = wP, wL
		wL = min(wP1, wL1)
		wP = max(wP1, wL1)
	end

return (a1+b1)/2.0
		
end

export mini

end # module
