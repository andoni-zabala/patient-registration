# typed: strict

class PatientEntity < T::Struct
  extend T::Sig

  const :id, Integer
  const :name, String
  const :email, String
  const :phone_number, T.nilable(String)
  const :document_photo_url, T.nilable(String)
end
