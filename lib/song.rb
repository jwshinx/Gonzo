class Song
 REGULAR = 2 
 NEW_RELEASE = 3 
 BARGAIN = 1 

 attr_reader :title
 attr_accessor :price_code

 def initialize title, price_code
  @title, @price_code = title, price_code
 end

 def charge
  result = 0
  case price_code
  when REGULAR
   result += 2
  when NEW_RELEASE
   result += 3
  when BARGAIN
   result += 1
  end
  result
 end
end
