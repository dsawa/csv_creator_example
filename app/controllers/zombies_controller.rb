class ZombiesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: Zombie.all }
      format.csv { export_csv }
    end
  end

  private

  def export_csv
    send_data CsvCreator.create(Zombie.all), filename: 'zombies.csv', type: 'text/csv; charset=utf-8; header=present'
  end
end
