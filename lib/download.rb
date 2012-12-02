class Download 

 attr_reader :song

 def initialize song 
  @song = song
 end

 def charge
  song.charge
 end

 def new_release_download_points
  song.new_release_download_points
 end
end
