class PaintingsController < ApplicationController
	def show
		@painting = Painting.find(params[:id])
	end

	def new
		@gallery = Gallery.find(params[:gallery_id])
		@painting = Painting.new
	end

	def create
		@painting = Painting.new(painting_params)
		@painting.gallery_id = params[:gallery_id]
		if @painting.save
			redirect_to gallery_path(params[:gallery_id])
		else
			render 'new'
		end
	end

	def edit
		@gallery = Gallery.find(params[:gallery_id])
		@painting = Painting.find(params[:id])
	end

	def update
		@gallery = Gallery.find(params[:gallery_id])
		@painting = Painting.find(params[:id])

		if @painting.update(painting_params)
			redirect_to @gallery
		else
			render 'edit'
		end
	end

	def destroy
		@gallery = Gallery.find(params[:gallery_id])
		@painting = Painting.find(params[:id])
		@painting.destroy

		redirect_to gallery_path(@gallery)
	end

	private
	def painting_params
		params.require(:painting).permit(:title, :image)
	end
end