def encrypter(message, rotation)
	
	changed_message = message.chars.map do |character|
		if character.match?(/[A-Za-z]/)
			base = character.ord < 91 ? 'A'.ord : 'a'.ord
			(((character.ord - base + rotation) % 26) + base).chr
			else
				character
			end
		end
		changed_message.join
end

rotation = 5

puts "Enter the message"
message = gets.chomp.to_s
puts "----"
puts encrypter(message, rotation)