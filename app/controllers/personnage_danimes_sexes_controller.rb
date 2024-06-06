class PersonnageDanimesSexesController < ApplicationController
  before_action :set__personnage_danimes_sex, only: %i[ show edit update destroy ]

  # GET /_personnage_danimes_sexes or /_personnage_danimes_sexes.json
  def index
    @_personnage_danimes_sexes = PersonnageDanimesSexe.all
  end

  # GET /_personnage_danimes_sexes/1 or /_personnage_danimes_sexes/1.json
  def show
  end

  # GET /_personnage_danimes_sexes/new
  def new
    @_personnage_danimes_sex = PersonnageDanimesSexe.new
  end

  # GET /_personnage_danimes_sexes/1/edit
  def edit
  end

  # POST /_personnage_danimes_sexes or /_personnage_danimes_sexes.json
  def create
    @_personnage_danimes_sex = PersonnageDanimesSexe.new(_personnage_danimes_sex_params)

    respond_to do |format|
      if @_personnage_danimes_sex.save
        format.html { redirect_to personnage_danimes_sex_url(@_personnage_danimes_sex), notice: "Personnage danimes sexe was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_danimes_sex }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_danimes_sexes/1 or /_personnage_danimes_sexes/1.json
  def update
    respond_to do |format|
      if @_personnage_danimes_sex.update(_personnage_danimes_sex_params)
        format.html { redirect_to personnage_danimes_sex_url(@_personnage_danimes_sex), notice: "Personnage danimes sexe was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_danimes_sex }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_danimes_sexes/1 or /_personnage_danimes_sexes/1.json
  def destroy
    @_personnage_danimes_sex.destroy!

    respond_to do |format|
      format.html { redirect_to personnage_danimes_sexes_url, notice: "Personnage danimes sexe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_danimes_sex
      @_personnage_danimes_sex = PersonnageDanimesSexe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_danimes_sex_params
      params.require(:personnage_danimes_sex).permit(:name)
    end
end
