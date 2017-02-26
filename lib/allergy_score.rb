class String
	define_method(:allergy_score) do
		user_score = self.to_i()
		user_allergens = []

		until user_score.==(0)
			if user_score.>(255)
				user_allergens.push("error")
				user_score = 0
			elsif user_score.>=(128)
				user_allergens.push("cats")
				user_score = user_score.-(128)
			elsif user_score.>=(64)
				user_allergens.push("pollen")
				user_score = user_score.-(64)
			elsif user_score.>=(32)
				user_allergens.push("chocolate")
				user_score = user_score.-(32)
			elsif user_score.>=(16)
				user_allergens.push("tomatoes")
				user_score = user_score.-(16)
			elsif user_score.>=(8)
				user_allergens.push("strawberries")
				user_score = user_score.-(8)
			elsif user_score.>=(4)
				user_allergens.push("shellfish")
				user_score = user_score.-(4)
			elsif user_score.>=(2)
				user_allergens.push("peanuts")
				user_score = user_score.-(2)
			else
				user_allergens.push("egg")
				user_score = user_score.-(1)
			end
		end

		user_allergens
	end
end