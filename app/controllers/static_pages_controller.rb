class StaticPagesController < ApplicationController

	def home
	flash.now[:info]='This website prototype is a proof of concept created by Jesus Imery'
	end
	
	def help
	end
end
