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
  total_amount, new_release_download_points = 0, 0
  result = "\nDownload Records for #{name}\n"
  @downloads.each do |element|
   new_release_download_points += element.new_release_download_points

   result += "\t" +element.song.title+ " " + element.charge.to_s + "\n"
   total_amount += element.charge 
  end

  result += "Amount owed is #{total_amount}\n"
  result += "You earned #{new_release_download_points} point(s)"
  result
 end

 def amount_for download
  download.charge
 end

end
