class Admin::PreferencesController < ApplicationController
  before_action :set_admin_preference, only: [:show, :edit, :update, :destroy]

  # GET /admin/preferences
  # GET /admin/preferences.json
  def index
    @admin_preferences = Admin::Preference.all
  end

  # GET /admin/preferences/1
  # GET /admin/preferences/1.json
  def show
  end

  # GET /admin/preferences/new
  def new
    @admin_preference = Admin::Preference.new
  end

  # GET /admin/preferences/1/edit
  def edit
  end

  # POST /admin/preferences
  # POST /admin/preferences.json
  def create
    @admin_preference = Admin::Preference.new(admin_preference_params)

    respond_to do |format|
      if @admin_preference.save
        format.html { redirect_to @admin_preference, notice: 'Preference was successfully created.' }
        format.json { render :show, status: :created, location: @admin_preference }
      else
        format.html { render :new }
        format.json { render json: @admin_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/preferences/1
  # PATCH/PUT /admin/preferences/1.json
  def update
    respond_to do |format|
      if @admin_preference.update(admin_preference_params)
        format.html { redirect_to @admin_preference, notice: 'Preference was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_preference }
      else
        format.html { render :edit }
        format.json { render json: @admin_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/preferences/1
  # DELETE /admin/preferences/1.json
  def destroy
    @admin_preference.destroy
    respond_to do |format|
      format.html { redirect_to admin_preferences_url, notice: 'Preference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_preference
      @admin_preference = Admin::Preference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_preference_params
      params.require(:admin_preference).permit(:song_order, :artist_order)
    end
end
