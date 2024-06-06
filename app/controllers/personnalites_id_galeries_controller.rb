class PersonnalitesIdGaleriesController < ApplicationController
  before_action :set__personnalites_id_galery, only: %i[ show edit update destroy ]

  # GET /_personnalites_id_galeries or /_personnalites_id_galeries.json
  def index
    @_personnalites_id_galeries = PersonnalitesIdGalerie.all
  end

  # GET /_personnalites_id_galeries/1 or /_personnalites_id_galeries/1.json
  def show
  end

  # GET /_personnalites_id_galeries/new
  def new
    @_personnalites_id_galery = PersonnalitesIdGalerie.new
  end

  # GET /_personnalites_id_galeries/1/edit
  def edit
  end

  # POST /_personnalites_id_galeries or /_personnalites_id_galeries.json
  def create
    @_personnalites_id_galery = PersonnalitesIdGalerie.new(_personnalites_id_galery_params)

    respond_to do |format|
      if @_personnalites_id_galery.save
        format.html { redirect_to _personnalites_id_galery_url(@_personnalites_id_galery), notice: "Personnalites id galerie was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_id_galery }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_id_galery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_id_galeries/1 or /_personnalites_id_galeries/1.json
  def update
    respond_to do |format|
      if @_personnalites_id_galery.update(_personnalites_id_galery_params)
        format.html { redirect_to _personnalites_id_galery_url(@_personnalites_id_galery), notice: "Personnalites id galerie was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_id_galery }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_id_galery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_id_galeries/1 or /_personnalites_id_galeries/1.json
  def destroy
    @_personnalites_id_galery.destroy!

    respond_to do |format|
      format.html { redirect_to _personnalites_id_galeries_url, notice: "Personnalites id galerie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_id_galery
      @_personnalites_id_galery = PersonnalitesIdGalerie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_id_galery_params
      params.require(:_personnalites_id_galery).permit(:name)
    end
end
