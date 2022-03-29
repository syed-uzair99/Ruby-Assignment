=begin
Assignment 1: AsciI Art creation, you can choose any ASCII art and display the output as art. This is to test your looping and control structure knowledge (1 hour)
=end

class DE
    def trees(d)
        for i in 0..d
            k=d-i-1
            for j in 0..k
                print " "
            end
            for j in k..(d-1)
                if j==k
                    print "/"
                elsif j==(d-1)
                    print "\\"
                else
                    print "**"
                end
            end
            puts "\n"
        end
        for i in 0..d*2
            print "-"
        end
    end
    # trees(10)

    def stem(d)
        s=d
        puts "\n"
        for i in 0..d/2
            k=s-i-1
            for i in 0..d*2/3
                print " "
            end
            puts "|||||\n"    
        end
    end

end  
obj=DE.new
puts "Enter value"
x=gets.strip
x=x.to_i
obj.trees(x)
obj.stem(x)
