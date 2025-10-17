# typed: strict

module Api
  module V1
    class PatientsController < AbstractBaseController
      extend T::Sig

      sig { override.void }
      def index
        super
      end

      sig { override.void }
      def show
        super
      end

      sig { override.void }
      def create
        super
      end

      sig { override.void }
      def update
        super
      end

      sig { override.void }
      def destroy
        super
      end

      private

      sig { override.returns(Patients::ReadDto) }
      def read_dto
        Patients::ReadDto.new
      end

      sig { override.returns(Patients::CreateDto) }
      def create_dto
        Patients::CreateDto.new
      end

      sig { override.returns(Patients::UpdateDto) }
      def update_dto
        Patients::UpdateDto.new
      end

      sig { override.returns(PatientsRepository) }
      def repository
        @repository ||= T.let(PatientsRepository.new, T.nilable(PatientsRepository))
      end
    end
  end
end
