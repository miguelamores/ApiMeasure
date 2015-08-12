class MeasureController < ApplicationController
  def index
  	measures = Measure.all
  	render json: measures, status: 200
  end

  # def show
  # 	measure = Measure.find(params[:id])
  # 	render json: measure, status: 200
  # end

  def create
  	measure = Measure.new(measure_params)
  	if measure.save
  		render json: measure, status: 201, location: measure
    end
  end



  private
  	def measure_params
  		params.require(:measure).permit(:id, :value, :latitude, :longitude)
  	end
  

end
