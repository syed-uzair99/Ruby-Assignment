class Dictionary
    def ad
        @dict = Hash.new
        @dict = { "success" => "the accomplishment of an aim or purpose." , 
                "aspiration" => "a hope or ambition of achieving something.",
                "zoology" => "the scientific study of animals"
                }
        puts @dict.sort


        def search(word)
            if @dict.key?(word)==true
                a=@dict.fetch(word)
                puts "Word found  with meaning #{a}"
                puts "\n\n"
            else
                puts "Sorry, word  not found in the dictionary \n\n"
            end
        end
        def add(word, meaning)
            @dict[word]=meaning
            puts "\n"
            puts @dict.sort
            puts "\n\n"
        end

        def update(word, meaning)
            if @dict.key?(word)==true
                @dict[word]=meaning
                puts "Meaning updated "
                # @dict.update(word,meaning)
                puts @dict.sort
                puts "\n\n"
            else
                puts "Sorry, word  not found in the dictionary \n\n"
            end
        end

        def del(word)
            if @dict.key?(word)==true
                @dict.delete(word)
                puts "Word Deleted successfully"
                puts @dict.sort
            else
                puts "Word not present in the dictionary"
            end
        end

        x=0
        while x!=6
            puts "Choose from the menu below"
            puts "1. Show contents of dictionary"
            puts "2. Search for a word"
            puts "3. Add a word "
            puts "4. Update a word"
            puts "5. Delete a word"
            puts "6. Exit the application"
            x=gets.to_i
            case x
            when 1
                puts @dict.sort
            when 2
                puts "Enter the word to be searched for"
                word=gets.strip
                search(word)
            when 3
                puts "Enter the word to be added"
                word=gets.strip
                puts "Enter the meaning of the word #{word}"
                meaning=gets.strip
                add(word,meaning)
            when 4
                puts "Enter the word to update the meaning "
                word=gets.strip
                puts "Enter the updated meaning of the word #{word}"
                updated_meaning=gets.strip
                update(word,meaning)

            when 5
                puts "Enter the word to be deleted from the dictionary"
                word = gets.strip
                del(word)
            when 6
                puts " End of the Application"
            else
                puts "Please enter a valid value "
            end
        end
        puts x 
    end
end
obj=Dictionary.new
obj.ad



