class UnpackFastaJob < ApplicationJob
	queue_as :default

	def perform(fasta_zip)
		zip_file_path = ActiveStorage::Blob.service.send(:path_for, fasta_zip.attachment.key)
		return unless zip_file_path.present?

		created_record_ids = []
		temp_directory_path = Dir.mktmpdir

		::Zip::File.open(zip_file_path) do |zip_file|
			zip_file.each do |file|
				file_path = File.join(temp_directory_path, file.name)
				begin
					zip_file.extract(file, file_path) unless File.exist?(file_path)
				rescue
					next
				end

				fasta = fasta_zip.deep_copy
				fasta.attachment.attach(
					io: File.open(file_path),
					filename: file.name
				)
				fasta.save
				created_record_ids << fasta.id
			end
		end
	rescue
		Fasta.where(id: created_record_ids).each &:destroy
	ensure
		FileUtils.remove_dir(temp_directory_path, true)
	end
end
