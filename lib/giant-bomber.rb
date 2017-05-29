require 'httparty'
require 'json'

class Agent
  include HTTParty

  attr_accessor :key
  base_uri 'http://www.giantbomb.com/api'

  #pass in your API key generated from the GiantBomb sign up
  def initialize(key)
    @key = key
    @accept = "application/json"
  end

  #get a game based on its unique GiantBomb id
  def game(id)
    self.class.get("/game/#{id}/?api_key=#{@key}&format=json&field_list=name,deck,description,genres,image")["results"]
  end

  #get a list of platforms
  def platforms
    self.class.get("/platforms/?api_key=#{@key}&format=json&field_list=name,id")["results"]
  end

  #Search for info about a platform, based on its name
  def platform(id)
    self.class.get("/platform/#{id}/?api_key=#{@key}&format=json&field_list=name,description,deck,release_date,image")["results"]
  end

  #Create a relationship between platform name and its unique GiantBomb id
  def platform_id_hash
    list = platforms
    platform_hash = Hash.new
    list.each do |platform|
      platform_hash[platform["name"]] = platform["id"]
    end

    platform_hash
  end

  #get the 20 most popular games from the platform of choice
  def platform_games(platform_name)
    self.class.get("/games/?api_key=#{@key}&format=json&platforms=#{platform_id.to_i}&field_list=name,deck,image,id,original_release_date&sort=number_of_user_reviews:desc&limit=20")["results"]
  end


end
