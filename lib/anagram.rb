class Anagram
    attr_accessor :word
    def initialize(word)
        @word = word
    end

    def match(words)
     
       words.filter do |word|
          if(self.word.size!=word.size) 
            false
          else
            if(self.word.split("").sort==word.split("").sort)
            true
            else 
             false
            end
          end
      end
    end
end
listen = Anagram.new("listen")

p listen.match(%w[enlists google inlets banana])
