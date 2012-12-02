class Customer 

 attr_reader :name, :downloads

 def initialize name
  @name = name
  @downloads = []
 end
 
 def add_download arg
  @downloads << arg
 end

 def statement
  total_amount, frequent_downloader_points = 0, 0
  result = "\nDownload Records for #{name}\n"
  @downloads.each do |element|
   this_amount = 0
   case element.price_code
   when Song::REGULAR
    this_amount += 2 
   when Song::NEW_RELEASE
    this_amount += 3 
   when Song::BARGAIN
    this_amount += 1 
   end

   result += "\t" + element.title + " " + this_amount.to_s + "\n"
   total_amount += this_amount

  end
  
  frequent_downloader_points = @downloads.length-1 

  result += "Amount owed is #{total_amount}\n"
  result += "You earned #{frequent_downloader_points} points"
  result
 end
end
