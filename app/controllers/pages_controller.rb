class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :index, :works], raise: false
  def index

  end
  def home

  end
  def about

  end
  def works

  end
end
