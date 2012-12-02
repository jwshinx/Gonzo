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
   this_amount = amount_for element

   result += "\t" + element.song.title + " " + this_amount.to_s + "\n"
   total_amount += this_amount

  end
  
  frequent_downloader_points = @downloads.length-1 

  result += "Amount owed is #{total_amount}\n"
  result += "You earned #{frequent_downloader_points} points"
  result
 end

 def amount_for download
  download.charge
 end

end
