require "animatedgifme/version"
require "httparty"


module Animatedgifme
  # Your code goes here...
  include HTTParty

  base_uri "animatedgif.me"

  def self.find(id)
  		retrieve_url get("/gif/#{id}.json")
  end

  def self.tagged(tag)

  		retrieve_url get("/#{tag}.json")
  end

  def self.random(tag)
  		 tagged(tag)
  end	

private 
	def retrieve_url(response)
		response.parsed_response["url"]		
	end

end