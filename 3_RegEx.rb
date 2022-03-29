def phone(str)
    if str.match(/[987]{1}[0-9]{9}/)
        puts "Valid Phone number"
    else
        puts "Invalid Phone Number"
    end
end

def fileform(str)
    if str.match(/txt$|doc$|xlsx$/)
        puts "FIle is of proper format"
    else
        puts "Invalid file format"
    end
end

def email(str)
    if str.match(/([a-z0-9]+[_a-z0-9\.-]*[a-z0-9]+@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4}))/)
        puts "Valid email ID"
    else
        puts "Invalid email ID"
    end
end


puts "Enter phone number "
ph = gets.strip
phone(ph)

puts "Enter your email ID"
e_mail=gets.strip
email(e_mail) 

puts "Enter Document name"
file_format=gets.strip
fileform(file_format)

