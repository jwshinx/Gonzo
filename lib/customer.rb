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
  new_release_download_points = 0
  result = "\nDownload Records for #{name}\n"
  @downloads.each do |element|
   new_release_download_points += element.new_release_download_points
   result += "\t" +element.song.title+ " " + element.charge.to_s + "\n"
  end

  result += "Amount owed is #{total_charge}\n"
  result += "You earned #{new_release_download_points} point(s)"
  result
 end

private
 def amount_for download
  download.charge
 end

 def total_charge
  @downloads.inject(0) { |sum, element| sum + element.charge }
 end
end
