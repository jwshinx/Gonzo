class Song
 REGULAR = 0
 NEW_RELEASE = 1
 BARGAIN = 2

 attr_reader :title
 attr_accessor :price_code

 def initialize title, price_code
  @title, @price_code = title, price_code
 end
end
