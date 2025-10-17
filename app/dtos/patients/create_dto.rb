# typed: strict

module Patients
  class CreateDto < T::Struct
    extend T::Sig

    const :name, String
    const :email, String
    const :phone_number, String
  end
end
