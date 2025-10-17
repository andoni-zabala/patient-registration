# typed: strict

require_relative "../entities/patient_entity"
require_relative "../models/patient"

class PatientsRepository < AbstractBaseRepository
  extend T::Sig

  Entity = type_member { { fixed: PatientEntity } }

  sig { override.params(dto: Patients::ReadDto).returns(T::Array[Entity]) }
  def read(dto:)
    patients = Patient.with_titles_like(dto.titles)

    patients.map do |patient|
      to_entity(patient: patient)
    end
  end

  private

  sig { params(patient: Patient).returns(Entity) }
  def to_entity(patient:)
    PatientEntity.new(
      id: patient.id,
      name: patient.name,
      email: patient.email,
      phone_number: patient.phone_number,
      document_photo_url: patient.document_photo_url
    )
  end

  sig { params(id: Integer).returns(T.nilable(Community)) }
  def community_by_id(id:)
    Community.find_by(id: id)
  end
end
