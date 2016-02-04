class HoursController < ApplicationController
  before_action :set_hour, only: [:show, :edit, :update, :destroy]

  def index
    @hours = Hour.all
  end

  def show

  end

  def new
    @hour = Hour.new
  end

  def edit
  end

  def create
    @hour = Hour.new(hours_params)

    if @hour.save
      redirect_to action: :index
    else
      render action: 'new'
  end

  def destroy

  end





    def hours_params
      params.require(:hour).permit(
            :start_schedule,
            :end_schedule,
            :sunday_start,
            :sunday_end,
            :monday_start,
            :monday_end,
            :tuesday_start,
            :tuesday_end,
            :wednesday_start,
            :wednesday_end,
            :thursday_start,
            :thursday_end,
            :friday_start,
            :friday_end,
            :saturday_start,
            :saturday_end
          )


    end

    private
      def set_hour
        @hour = Hour.find(params[:id])
      end
end
