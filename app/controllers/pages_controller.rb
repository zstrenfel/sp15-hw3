class PagesController < ApplicationController
  def home
  end

  def latin
    if !params[:name].nil? || !params[:adjective].nil?
      @text = "#{params[:name]} is so #{params[:adjective]}"
    else
      @text = "You are nothing!"
    end
    render 'home'
  end
end
