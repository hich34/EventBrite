class EventsController < ApplicationController
  include EventsHelper
  attr_accessor :events

  def index
  end

  def new
    @event = Event.new 
  end


  def show
  end

  def create
    puts "________________________________________"
    puts current_user.id
    puts params[:start_date]

    @event = Event.new('admin_id' => current_user.id,
    'title' => params[:title],
    'start_date' => params[:start_date],
    'duration' => params[:duration],
    'price' => params[:price],
    'location' => params[:location],
    'description' => params[:description])
    
      @event.save
  if @event.save
    flash[:success] = "Gossip Created Successfully"
    redirect_to root_path #changer le path

    else
render 'new'
    end
  end 

end
