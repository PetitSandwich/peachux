class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :index]
  def index

  end
  def home

  end
  def about

  end
end
