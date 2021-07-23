k = gets.to_i

def foo(num)
    count = 1
    result=''
    for i in 0...num.length
        j = num[i]
        if i < num.length - 1
            if j == num[i+1]
                count += 1
            else
                result += count.to_s + num[i]
                count = 1
			end
        else
            result += count.to_s + num[i]
            return result
		end
	end
end

if k < 1 
	puts "Please, write correct number"
	k = gets.to_i
end

if k == 1
	puts '1'
end

if k == 2
	puts '1'
	puts '11'
end

result = '11'
if k >2 
	puts '1'
	puts '11'
	for i in 2...k
		result = foo(result)
		puts result
	end
end