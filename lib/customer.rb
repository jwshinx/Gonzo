class Customer 

 attr_reader :name, :downloads

 def initialize name
  @name = name
  @downloads = []
 end
 
 def add_download arg
  @downloads << arg
 end
end
