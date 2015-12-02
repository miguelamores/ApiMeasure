class MeasureController < ApplicationController
  # def index
  # 	measures = Measure.all
  # 	render json: measures, status: 200
  # end

  def index
    if params[:startDate]
      measures = Measure.joins(:user).where("measures.created_at >= :startDate AND measures.created_at <= :endDate",
      {startDate: params[:startDate], endDate: params[:endDate]})
      # measures = Measure.find_by_sql("SELECT * FROM measures
      #             INNER JOIN users ON users.id = measures.user_id 
      #             WHERE created_at >= ? AND created_at <= ?", params[:startDate], params[:endDate])

    else
      # measures = Measure.find_by_sql("SELECT * FROM measures
      #             INNER JOIN users ON users.id = measures.user_id 
      #             WHERE created_at >= :startDate AND created_at <= :endDate",
      #             {startDate: params[:startDate], endDate: params[:endDate]})
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
