class VolumesLnsController < ApplicationController
  before_action :set__volumes_ln, only: %i[ show edit update destroy ]

  # GET /_volumes_lns or /_volumes_lns.json
  def index
    @_volumes_lns = VolumesLn.all
  end

  # GET /_volumes_lns/1 or /_volumes_lns/1.json
  def show
  end

  # GET /_volumes_lns/new
  def new
    @_volumes_ln = VolumesLn.new
  end

  # GET /_volumes_lns/1/edit
  def edit
  end

  # POST /_volumes_lns or /_volumes_lns.json
  def create
    @_volumes_ln = VolumesLn.new(_volumes_ln_params)

    respond_to do |format|
      if @_volumes_ln.save
        format.html { redirect_to _volumes_ln_url(@_volumes_ln), notice: "Volumes ln was successfully created." }
        format.json { render :show, status: :created, location: @_volumes_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_volumes_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_volumes_lns/1 or /_volumes_lns/1.json
  def update
    respond_to do |format|
      if @_volumes_ln.update(_volumes_ln_params)
        format.html { redirect_to _volumes_ln_url(@_volumes_ln), notice: "Volumes ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_volumes_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_volumes_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_volumes_lns/1 or /_volumes_lns/1.json
  def destroy
    @_volumes_ln.destroy!

    respond_to do |format|
      format.html { redirect_to _volumes_lns_url, notice: "Volumes ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__volumes_ln
      @_volumes_ln = VolumesLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _volumes_ln_params
      params.require(:_volumes_ln).permit(:name)
    end
end
