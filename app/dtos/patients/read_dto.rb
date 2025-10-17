# typed: strict

module Patients
  class ReadDto < T::Struct
    extend T::Sig

    const :name, T.nilable(String)
    const :email, T.nilable(String)
    const :address, T.nilable(String)
  end
end
