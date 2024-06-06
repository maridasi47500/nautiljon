class PersonnageDanimesGoodiesController < ApplicationController
  before_action :set__personnage_danimes_goody, only: %i[ show edit update destroy ]

  # GET /_personnage_danimes_goodies or /_personnage_danimes_goodies.json
  def index
    @_personnage_danimes_goodies = PersonnageDanimesGoody.all
  end

  # GET /_personnage_danimes_goodies/1 or /_personnage_danimes_goodies/1.json
  def show
  end

  # GET /_personnage_danimes_goodies/new
  def new
    @_personnage_danimes_goody = PersonnageDanimesGoody.new
  end

  # GET /_personnage_danimes_goodies/1/edit
  def edit
  end

  # POST /_personnage_danimes_goodies or /_personnage_danimes_goodies.json
  def create
    @_personnage_danimes_goody = PersonnageDanimesGoody.new(_personnage_danimes_goody_params)

    respond_to do |format|
      if @_personnage_danimes_goody.save
        format.html { redirect_to _personnage_danimes_goody_url(@_personnage_danimes_goody), notice: "Personnage danimes goody was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_danimes_goody }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_danimes_goodies/1 or /_personnage_danimes_goodies/1.json
  def update
    respond_to do |format|
      if @_personnage_danimes_goody.update(_personnage_danimes_goody_params)
        format.html { redirect_to _personnage_danimes_goody_url(@_personnage_danimes_goody), notice: "Personnage danimes goody was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_danimes_goody }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_danimes_goodies/1 or /_personnage_danimes_goodies/1.json
  def destroy
    @_personnage_danimes_goody.destroy!

    respond_to do |format|
      format.html { redirect_to _personnage_danimes_goodies_url, notice: "Personnage danimes goody was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_danimes_goody
      @_personnage_danimes_goody = PersonnageDanimesGoody.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_danimes_goody_params
      params.require(:_personnage_danimes_goody).permit(:name)
    end
end
