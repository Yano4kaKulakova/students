json.extract! student, :id, :first_name, :last_name, :surname, :klass_id, :school_id, :created_at, :updated_at
json.url student_url(student, format: :json)
