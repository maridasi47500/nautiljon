class PersonnalitesPeoplePlusController < ApplicationController
  before_action :set__personnalites_people_plu, only: %i[ show edit update destroy ]

  # GET /_personnalites_people_plus or /_personnalites_people_plus.json
  def index
    @_personnalites_people_plus = PersonnalitesPeoplePlu.all
  end

  # GET /_personnalites_people_plus/1 or /_personnalites_people_plus/1.json
  def show
  end

  # GET /_personnalites_people_plus/new
  def new
    @_personnalites_people_plu = PersonnalitesPeoplePlu.new
  end

  # GET /_personnalites_people_plus/1/edit
  def edit
  end

  # POST /_personnalites_people_plus or /_personnalites_people_plus.json
  def create
    @_personnalites_people_plu = PersonnalitesPeoplePlu.new(_personnalites_people_plu_params)

    respond_to do |format|
      if @_personnalites_people_plu.save
        format.html { redirect_to personnalites_people_plu_url(@_personnalites_people_plu), notice: "Personnalites people plu was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_people_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_people_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_people_plus/1 or /_personnalites_people_plus/1.json
  def update
    respond_to do |format|
      if @_personnalites_people_plu.update(_personnalites_people_plu_params)
        format.html { redirect_to personnalites_people_plu_url(@_personnalites_people_plu), notice: "Personnalites people plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_people_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_people_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_people_plus/1 or /_personnalites_people_plus/1.json
  def destroy
    @_personnalites_people_plu.destroy!

    respond_to do |format|
      format.html { redirect_to personnalites_people_plus_url, notice: "Personnalites people plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_people_plu
      @_personnalites_people_plu = PersonnalitesPeoplePlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_people_plu_params
      params.require(:personnalites_people_plu).permit(:name)
    end
end
