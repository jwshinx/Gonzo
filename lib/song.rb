class Song
 REGULAR = 2 
 NEW_RELEASE = 3 
 BARGAIN = 1 

 attr_reader :title, :price_code

 def initialize title, price_code
  @title, self.price_code = title, price_code
 end

 def price_code=(value)
  @price_code = value
  @price = case price_code
   when REGULAR 
    RegularPrice.new
   when NEW_RELEASE
    NewReleasePrice.new
   when BARGAIN
    BargainPrice.new
   end
 end

 def charge
  return @price.charge
 end

 def new_release_download_points
  (price_code == NEW_RELEASE) ? 1 : 0
 end

end
