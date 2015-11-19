class MeasureController < ApplicationController
  # def index
  # 	measures = Measure.all
  # 	render json: measures, status: 200
  # end

  def index
    if params[:startDate]
      measures = Measure.where("created_at >= :startDate AND created_at <= :endDate",
      {startDate: params[:startDate], endDate: params[:endDate]})
    else
      measures = Measure.all
    end
    render json: measures, status: 200
  end

  def create
  	measure = Measure.new(measure_params)
  	if measure.save
  		render json: measure, status: 201, location: measure
    else
      render nothing: true, status: 500
    end
  end



  private
  	def measure_params
  		params.require(:measure).permit(:id, :value, :latitude, :longitude, :user_id)
  	end
  

end
