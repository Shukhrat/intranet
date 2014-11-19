class ParserController < ApplicationController

	require 'open-uri'
	require 'nokogiri'

  def kolesa
  	source = params[:source]
  	source ||= 'http://kolesa.kz/a/show/12160116'

  	@page = Nokogiri::HTML(open(source.to_s))

  	lt = Nokogiriparse.new
  	lt.parse(@page)

  	@vision = lt

  end
end
