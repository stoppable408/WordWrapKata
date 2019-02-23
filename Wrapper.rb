=begin
Here is a short programming exercise. It's a word wrap kata. The spec is as follows:

---
You write a class called Wrapper, that has a function named wrap that takes two arguments, a string, and a column number.
The function returns the string, but with line breaks inserted at just the right places to make sure that no line is longer than the column number.
You try to break lines at word boundaries.

Like a word processor, break the line by replacing the last space in a line with a newline.

Note: You can create as many functions that you would like. But wrap should be the only public function.

 ---

Please write this in Ruby on Rails. Please create a github repository and send me a link. Take your time.

    Please let me know if you have any questions.
=end

module Wrapper
  class Wrapper

    def wrap(string, columnNum)
      #counter is an internal function that handles the more complex lines
      stringArray = string.split(" ")
        #Initialize a variable name "FinalArray", this will store all of the words separated by the proper line breaks
        finalArray = []

        #while the array of strings is not empty, it will check the first string to make sure it is shorter than the columnNum, if it's not, it will
        # check the next word to see if the two words combined are shorter than the column length,
        while !stringArray.empty?
          element = stringArray.shift
          #take the first element of the array, and check it against column num
          while element.length < columnNum
            #if element is the last part of the string, break from the loop and return that element
            if stringArray.length == 0
              break
            end

            shift = stringArray.shift
            #take another variable called "shift" that represents the next word in the sentence
            finalElement  = element + " " + shift

            if finalElement.length > columnNum
              #if the combined element, and the next word are greater than the columnNum, then we've overshot
              # and we need to take a step back, but add the element to the final array
              finalArray.append(element)
              element = shift
            else
              #otherwise, we're not done yet, so element is reassigned and the loop starts again
              element = finalElement
            end
          end
          finalArray.append(element)
        end
        #once everything is done, join the array with a newLine character
        return finalArray.join("\n")




    end


  end
end
