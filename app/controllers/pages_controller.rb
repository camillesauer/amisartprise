class PagesController < ApplicationController
  def home
    @ami = Ami.new
  end

end
