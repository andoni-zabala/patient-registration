# typed: strict

module Patients
  class ReadDto < T::Struct
    extend T::Sig

    const :name, T.nilable(String)
    const :email, T.nilable(String)
    const :phone_number, T.nilable(String)
  end
end
