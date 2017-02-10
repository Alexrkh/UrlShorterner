require 'digest'


class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
   def self.shorten(web)
    short = Digest::SHA1.hexdigest(web)[0..5]
    latest = Url.find_by(long_url: web)
    latest.update(short_url: short)
   end
end
