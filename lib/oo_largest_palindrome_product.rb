# Implement your object-oriented solution here!
class LargestPalindromeProduct
    
    def initialize
    end

    def answer
        range = Array(100..999)
        products = []
        palindromous = []

        range.each do |element|
            products.push(range.map{|x| x * element })
        end

        products.flatten.each do |element|
            palindromous.push(element) if element.to_s == element.to_s.reverse
        end
    
        return palindromous.max
    end
end