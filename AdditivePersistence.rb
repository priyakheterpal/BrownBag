class Additive
	def additive_persistence(number,base)				
		if number.is_a? Integer
			original_number = number
			persistence = 0		
			
			absolutenumber = number.abs
			until absolutenumber < base do
				sum = 0		
				
				while (absolutenumber > 0)
					sum += absolutenumber % base
					absolutenumber = absolutenumber / base						
				end
				
				absolutenumber = sum
				#puts "new number after adding all digits -> " + number.to_s
				persistence += 1			
			end
			puts "Additive persistence of number " + original_number.to_s + " is -> " + persistence.to_s
		end
	end	
end

additive = Additive.new
numbers = [-61,61,0,6,627615,39390,588225,393900588225]
puts "--- Examples in 10-Base ---"
numbers.each do |arrnumber|
	additive.additive_persistence(arrnumber,10)	
end

additive.additive_persistence('ttt',10)	


