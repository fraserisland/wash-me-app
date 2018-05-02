class PagesController < ApplicationController
  def index
    @washers = Washer.all
  end
end
