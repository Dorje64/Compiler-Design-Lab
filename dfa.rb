##############################
##DFA
##Compiler Design
##Torchi Rokaya
##############################

$inputs=[]
$in
$finalStates=[]
$stateTransition=[[],[]]

def Dfa_input
	puts "Enter the number of State in DFA"
	@sn=gets.to_i
	
	puts "Enter the number of inputs in DFA"
	@in= gets.to_i

	for i in 0..@in-1
		puts "input  #{i+1}="
		$inputs[i] = gets
	end

	puts "Enter number of finalStates in DFA"
	@fn= gets.to_i
	for i in 0..@fn-1
		puts "finalState #{i+1}"
		$finalStates[i]=gets.to_i
	end

	for i in 0..@sn-1
		for j in 0..@in-1
			puts"q(#{i},#{$inputs[j]})=q"
			$stateTransition[i][j]=gets.to_i
		end
	end

	Test(@in,@fn)
end

def Test(input_number,final_number)
	while(true)
		puts"Enter string"
		@string=gets
		test=0
		for i in 0..@string.length-2
			for j in 0..input_number-1
				if(@string[i]==@string[j])
					test= $stateTransition[test][j]
				end
			end

		end
			
			for i in 0..final_number-1
				if test==$finalStates[i]
					puts "valid regular expression"
				else if i==@fn-1
					puts "Invalid regular expression"
					
				end
			
			end

		end
end
Dfa_input