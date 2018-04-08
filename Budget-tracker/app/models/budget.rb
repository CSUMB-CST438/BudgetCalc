class Budget < ApplicationRecord

	def home
		self.house / self.income * 100
	end
	def electric
		self.elec / self.income * 100
	end
	def creditc
		self.credit / self.income * 100
	end
	def gasoline
		self.gas / self.income * 100
	end
	def truck
		self.car / self.income * 100
	end
	def insurance
		self.insur / self.income * 100
	end
	def watering
		self.water / self.income * 100
	end
	def spending
		self.money / self.income * 100
	end
end
