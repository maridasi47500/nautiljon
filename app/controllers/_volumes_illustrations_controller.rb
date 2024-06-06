class VolumesIllustrationsController < ApplicationController
  before_action :set__volumes_illustration, only: %i[ show edit update destroy ]

  # GET /_volumes_illustrations or /_volumes_illustrations.json
  def index
    @_volumes_illustrations = VolumesIllustration.all
  end

  # GET /_volumes_illustrations/1 or /_volumes_illustrations/1.json
  def show
  end

  # GET /_volumes_illustrations/new
  def new
    @_volumes_illustration = VolumesIllustration.new
  end

  # GET /_volumes_illustrations/1/edit
  def edit
  end

  # POST /_volumes_illustrations or /_volumes_illustrations.json
  def create
    @_volumes_illustration = VolumesIllustration.new(_volumes_illustration_params)

    respond_to do |format|
      if @_volumes_illustration.save
        format.html { redirect_to _volumes_illustration_url(@_volumes_illustration), notice: "Volumes illustration was successfully created." }
        format.json { render :show, status: :created, location: @_volumes_illustration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_volumes_illustration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_volumes_illustrations/1 or /_volumes_illustrations/1.json
  def update
    respond_to do |format|
      if @_volumes_illustration.update(_volumes_illustration_params)
        format.html { redirect_to _volumes_illustration_url(@_volumes_illustration), notice: "Volumes illustration was successfully updated." }
        format.json { render :show, status: :ok, location: @_volumes_illustration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_volumes_illustration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_volumes_illustrations/1 or /_volumes_illustrations/1.json
  def destroy
    @_volumes_illustration.destroy!

    respond_to do |format|
      format.html { redirect_to _volumes_illustrations_url, notice: "Volumes illustration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__volumes_illustration
      @_volumes_illustration = VolumesIllustration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _volumes_illustration_params
      params.require(:_volumes_illustration).permit(:name)
    end
end
