class HomeController < ApplicationController
  scope :query,->{Assert.all}
end
