# typed: strict

require_relative "../entities/patient_entity"
require_relative "../models/patient"

class PatientsRepository < AbstractBaseRepository
  extend T::Sig

  Entity = type_member { { fixed: PatientEntity } }

  sig { override.params(dto: Patients::ReadDto).returns(T::Array[Entity]) }
  def read(dto:)
    patients = Patient.all
    patients = patients.by_name(dto.name) if dto.name
    patients = patients.by_email(dto.email) if dto.email
    patients = patients.where(phone: dto.phone_number) if dto.phone_number

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
      email: patient.email
    )
  end
end
