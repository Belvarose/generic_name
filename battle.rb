module Battle

	def start_battle(player,enemy)

		puts 'start_battle'
		#@battle_end = false


		#while battle_end
		initiate_battle(player,enemy)
		#	@battle_end = checkFin
		#end
	end

	def initiate_battle(a,b)

		tmp = nil
		damage = 0

		if a.spd > b.spd
			puts "#{a.name} makes the first move!"
			first = a
			second = b
		else
			puts "#{b.name} makes the first move!"
			first = b
			second = a
		end

		while 
			#damage calculation
			damage = first.atk - second.pdef + rand(1..10)
			damage = 0 if damage < 0
			puts "#{first.name} did #{damage} damage to #{second.name}!"
			
			#health calculation
			second.health -= damage
			second.health = 0 if second.health < 0
			puts "#{second.name} has #{second.health} health remaining!"

			#battle resolved?
			if second.health == 0
				puts "#{second.name} is dead!"
				break
			else
				tmp = first
				first = second
				second = tmp
			end
		end
	end
end