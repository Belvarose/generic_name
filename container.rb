require './being'
require './battle'

def run

	include Battle

	hero = Being.new('Hero',25,5,4,2,5,5,3)
	monster = Being.new('Monster',10,5,2,2,2,2,1)

	start_battle(hero,monster)
end

run