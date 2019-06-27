# Implement your procedural solution here!
def largest_palindrome_product
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