class AddAttendeesCountToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :attendees_count, :integer
  end
end
