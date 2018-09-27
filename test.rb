#Name: Timonty Lum and Owen Stanski
#Course: CSC 415
#Semester: Fall 2018
#Instructor: Dr. Pulimood
#Project name: Assignmnt 2 Tutorial Source Code
#Description: Create a tutorial for tools and strategies of software testing
#Filename: test.rb
#Description: unit testing a simple function that checks if new password is valid
#Last modeified on: 9/27/2018


class New_Password
	def check(pass)
		if pass =~ /[A-Z]/ and pass =~ /[b-z]/ and pass =~ /\d/ and pass.length >=8	#conditions of password
			return true								#returns true if conditions are met
		end
		return false									#otherwise, return false
	end
end


#==============================================================================================================

require 'test/unit'
class My_test < Test::Unit::TestCase	
	def test_basic
		assert_equal(true,New_Password.new.check("zA345678"))			#assert_equal method is used to compare
		assert_equal(true,New_Password.new.check("9sfWafbuwofu"))		#actual vs expected results
		assert_equal(true,New_Password.new.check("sf9Abfouw2244"))
		assert_equal(true,New_Password.new.check("dw@r*^*(&daw&g(G(&7297&(G(&G&2g2e628g368g^*G^"))
		assert_equal(false,New_Password.new.check("zdddddd888888888888800000000000000012"))
		assert_equal(false,New_Password.new.check("zA34678"))
		assert_equal(false,New_Password.new.check("dawdad7862a"))
		assert_equal(false,New_Password.new.check("AWHGUWO72AVW6"))
		assert_equal(true,New_Password.new.check("aaaaaAAAAA6969696969"))
	end
end
