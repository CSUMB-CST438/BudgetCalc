#Model for Budget.

class Budget < ApplicationRecord

	#MVC Design pattern for model

	#percentage for budget.

	belongs_to :user 

	def home
		(self.house / self.income * 100).round(2)
	end

	def electric
		(self.elec / self.income * 100).round(2)
	end

	def creditc
		(self.credit / self.income * 100).round(2)
	end

	def gasoline
		(self.gas / self.income * 100).round(2)
	end

	def truck
		(self.car / self.income * 100).round(2)
	end

	def insurance
		(self.insur / self.income* 100).round(2)
	end

	def watering
		(self.water / self.income * 100).round(2)
	end

	def spending
		(self.money / self.income  * 100).round(2)
	end
#Cash remaining
	def rem
		self.income - (self.elec + self.house + self.credit + self.gas + self.car + self.insur + self.water + self.money)
	end		

	#Cash remaining percentage if any
	def leftovers
		if rem > 0
		(rem / self.income * 100).round(2)
		else
		0 
		end
	end

	#for pie chart
	def budget_graph
		{"Home": self.home, "Electric": self.electric, "Credit Card": self.creditc, "Gas": self.gasoline, "Truck": self.truck,
			"Insurance": self.insurance, "Water": self.watering, "Spending": self.spending, "Remaining": self.leftovers}
	end
end
