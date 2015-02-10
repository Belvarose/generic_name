class Being 

	attr_accessor :name,:health, :mana, :atk, :mag, :pdef, :mdef, :spd

	def initialize(name,health,mana,atk,mag,pdef,mdef,spd)
		@name = name
		@health = health
		@mana = mana
		@atk = atk
		@mag = mag
		@pdef = pdef
		@mdef = mdef
		@spd = spd
	end
end