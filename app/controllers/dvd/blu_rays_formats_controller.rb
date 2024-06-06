class Dvd::BluRaysFormatsController < ApplicationController
  before_action :set__dvd_blu_rays_format, only: %i[ show edit update destroy ]

  # GET /_dvd_blu_rays_formats or /_dvd_blu_rays_formats.json
  def index
    @_dvd_blu_rays_formats = Dvd::BluRaysFormat.all
  end

  # GET /_dvd_blu_rays_formats/1 or /_dvd_blu_rays_formats/1.json
  def show
  end

  # GET /_dvd_blu_rays_formats/new
  def new
    @_dvd_blu_rays_format = Dvd::BluRaysFormat.new
  end

  # GET /_dvd_blu_rays_formats/1/edit
  def edit
  end

  # POST /_dvd_blu_rays_formats or /_dvd_blu_rays_formats.json
  def create
    @_dvd_blu_rays_format = Dvd::BluRaysFormat.new(_dvd_blu_rays_format_params)

    respond_to do |format|
      if @_dvd_blu_rays_format.save
        format.html { redirect_to dvd_blu_rays_format_url(@_dvd_blu_rays_format), notice: "Blu rays format was successfully created." }
        format.json { render :show, status: :created, location: @_dvd_blu_rays_format }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_blu_rays_formats/1 or /_dvd_blu_rays_formats/1.json
  def update
    respond_to do |format|
      if @_dvd_blu_rays_format.update(_dvd_blu_rays_format_params)
        format.html { redirect_to dvd_blu_rays_format_url(@_dvd_blu_rays_format), notice: "Blu rays format was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd_blu_rays_format }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_blu_rays_formats/1 or /_dvd_blu_rays_formats/1.json
  def destroy
    @_dvd_blu_rays_format.destroy!

    respond_to do |format|
      format.html { redirect_to dvd_blu_rays_formats_url, notice: "Blu rays format was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd_blu_rays_format
      @_dvd_blu_rays_format = Dvd::BluRaysFormat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd_blu_rays_format_params
      params.require(:dvd_blu_rays_format).permit(:name)
    end
end
