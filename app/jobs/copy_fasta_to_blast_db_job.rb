class CopyFastaToBlastDBJob < ApplicationJob
	queue_as :default

	def perform(fasta)
		FileUtils.cp(
			ActiveStorage::Blob.service.send(:path_for, fasta.attachment.key),
			"#{ENV['BLAST_DB_DIRECTORY']}/#{fasta.filename.to_s}"
		)

		system('sequenceserver -m')
		SequenceServer.init
	rescue
	end
end
