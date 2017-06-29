class Advisors::ExceptionsController < ApplicationController
before_action :set_advisor

	def create
		if @exception = @advisor.advisor_exceptions.create(exception_params)
		flash.notice = "Exceptions added"
		redirect_to advisors_path
		else
		flash.alert = "unable to add exceptions"
		redirect_to @advisor
		end
	end


private

	def set_advisor
		@advisor = Advisor.find(params[:advisor_id])
	end

	def exception_params
		params.require(:advisor_exception).permit(:time)
	end 

end