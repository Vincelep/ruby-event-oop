require 'pry'
require 'time'


class Event
	attr_accessor :start_date
	attr_accessor :attendees
	@@event_date = []

	def initialize(start_date, length, title, attendees)
		@start_date = Time.parse(start_date)
		@duration = length.to_i
		@title = title.to_s
		@attendees = attendees
		#@@event_date << @date << @duration << @title << @attendees
	end

	def postpone_24h(start_date)
		@new_start_date = Time.parse(start_date) + 60 * 60 * 24
	end

	def end_date(start_date, length)
		@start_date = Time.parse(start_date) + (length.to_i * 60)
	end

	def is_past
		if @start_date < Time.now
			puts true
		else 
			puts false
		end
	end	

	def is_future
	  if @start_date > Time.now
	  	puts "Welcome to the future"
	  else
	  	puts false
		end
	end

	def is_soon
		if start_date - Time.now < 30*60
			puts "En retard"
		else
			puts "it's ok"
		end		
	end	

	def to_s(start_date, title, length, attendees)
		puts "Titre : #{title}" 
		puts "Date de début : #{start_date}"
		puts "Durée : #{length}"
		puts "Invités : #{attendees.join(',')}"
	end

	def self.all
		return @@event_date
	end

end


#binding.pry