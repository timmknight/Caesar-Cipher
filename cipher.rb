# Task:
# Implement a caesar cipher that takes in a string 
# and the shift factor and then outputs the modified string:
# 		> caesar_cipher("What a string!", 5)
#     => "Bmfy f xywnsl!"


def cipher(string, shift)

#Loop through the string
	string.each_char do |letter|	

	#Keep spaces as spaces rather than being shifted
		if letter.ord == 32
			print " "
	#Account for punctuation
		elsif letter.ord.between?(33,47)
			print letter 				
	#For A-Z loop from Z to A
		elsif ((letter.ord + shift).between?(91,96))
				print (letter.ord-26+shift).chr
	#For a-z loop from z to a
		elsif (letter.ord + shift  >= 122)
			print (letter.ord-25+shift).chr
	#If letter doesn't need looping		
		else
			print (letter.ord+shift).chr
		end
	end
	#messy but makes the output clearer! 
	puts "\n"
end

cipher("What a string!", 5)
# =>"Bmfy f xywnsl!"