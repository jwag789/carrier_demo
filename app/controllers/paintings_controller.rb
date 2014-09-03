class PaintingsController < ApplicationController
	def show
		@gallery = Gallery.find(params[:gallery_id])
		@painting = Painting.find(params[:id])
	end

	def new
		@gallery = Gallery.find(params[:gallery_id])
		@painting = Painting.new
	end

	def create
		@gallery = Gallery.find(params[:gallery_id])
		@painting = Painting.new(painting_params)
		@painting.gallery_id = params[:gallery_id]

		respond_to do |format|

			if @painting.save
				format.html { redirect_to gallery_path(params[:gallery_id]), notice: "Painting created!" }
				format.json { render json: @painting, status: :created }
			else
				format.html { render :new }
				format.json { render json: @painting.errors, status: :unprocessable_entity }
			end

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
		params.require(:painting).permit(:title, :image, :remote_image_url)
	end
end