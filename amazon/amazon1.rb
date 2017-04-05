def totalScore(blocks, n)
	# WRITE YOUR CODE HERE
	score = 0
	stack = []
	blocks.each do |block|
	    if block.is_a?(Integer)
	        score += block
	        stack << block
	    elsif block == 'Z'
	        score -= stack.pop
	    elsif block == 'X'
	        current_throw = 2* stack.last
	        score += current_throw
	        stack << current_throw
	    elsif block == '+'
	        prev = stack.pop
	        second_prev = stack.last
	        current_throw = prev + second_prev
	        score += current_throw
	        stack << prev
	        stack << current_throw
	    end
	end
	return score
end



puts totalScore([5, -2, 4, 'Z' , 'X', 9, '+', '+'],8)
