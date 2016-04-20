
$state=[[0,1],[0,1]]
def inputstring
@exp
puts "Enter String"
@exp =gets
if(result=checking(@exp)==1)
	puts"valid Regular expression"
else
	puts"invalid Regular expression"
end
end

def checking(string)
	@test=0
	for i in 0..(string.length-2)
		
		if(string[i].to_i!= 1 and string[i].to_i != 0)
			return 0
		else
			if (string[i].to_i == 0)
				@test= $state[@test][0]
				
			else(string[i].to_i==1)
				
				@test = $state[@test][1]
			end
		end
	end
	return @test
	
end

inputstring