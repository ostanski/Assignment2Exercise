file = File.open("testcases.csv","r")
line1 = []
line2 = []
pass = []
exp = []

line1 = file.gets
pass = line1.split(',')
line2 = file.gets
exp = line2.split(',')

file.close

i=0
while i < pass.length
	if pass[i] =~ /[A-Z]/ and pass[i] =~ /[b-z]/ and pass[i] =~ /\d/
		puts "Expected:" + exp[i] + "\t Actual:True"
	else
		puts "Expected:" + exp[i] + "\t Actual:False"
	end
	i=i+1
end

