class Song
 REGULAR = 2 
 NEW_RELEASE = 3 
 BARGAIN = 1 

 attr_reader :title
 attr_accessor :price_code

 def initialize title, price_code
  @title, @price_code = title, price_code
 end
end
