class Download 

 attr_reader :song

 def initialize song 
  @song = song
 end

 def charge
  result = 0
  case song.price_code
  when Song::REGULAR
   result += 2
  when Song::NEW_RELEASE
   result += 3
  when Song::BARGAIN
   result += 1
  end
  result
 end
end
