class AddVacancieStateToVacancies < ActiveRecord::Migration[7.0]
  def change
    add_column :vacancies, :vacancie_state, :string
  end
end
