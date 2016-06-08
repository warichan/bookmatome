class SiteDatesController < ApplicationController
  def new
    @site_date = SiteDate.new
  end

  def create
  end

  def show
    @site_dates = SiteDate.all
  end
end
