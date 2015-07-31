Sequel.migration do
  change do
    create_table(:categories_notes) do
      primary_key :id
      Fixnum :category_id
      Fixnum :note_id
      DateTime :created_at
      DateTime :updated_at
    end
  end
end
