require "license_plate_parser/version"
require "license_plate_parser/version"
require 'json'

module LicensePlateParser
  class Error < StandardError; end
  # Your code goes here...

  #class Plate
  #	def self.hello
  #		puts 'hello'
  #	end
  #end

  class Plate
  	def self.parse(plate)
  		plates = JSON.parse(File.read('lib/plate_list.json'))
  		city_hash =	plates.select{ |p| p['plaka'] == plate.to_i }

  		if city_hash.any?
  			puts city_hash.first.values.first
  		else
  			puts 'Bulunamadı..'
		end
  	end
  end
end
