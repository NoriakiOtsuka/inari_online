class Admin::OnlinesController < ApplicationController
	def index
		@onlines = Online.all
	end

	def show
		@online = Online.find(params[:id])
	end

	def edit
		@online = Online.find(params[:id])
	end

	def update
		@online = Online.find(params[:id])
		if @online.update(online_params)
			render "show", notice: "successfully updated!"
		else
			render "edit"
		end
	end

	private
	def online_params
		params.require(:online).permit(:first_name, :last_name, :kana_name, :parent_name, :gender, :birthday, :school, :grade, :prefecture, :address, :phone, :parent_email, :subject)
	end
end