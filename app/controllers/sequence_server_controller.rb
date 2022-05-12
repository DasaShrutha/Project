class SequenceServerController < ApplicationController
	def get_sequence
		sequence_ids = params[:sequence_ids].split(/\s/)
		database_ids = params[:database_ids].split(/\s/)

		sequences = SequenceServer::Sequence::Retriever.new(sequence_ids, database_ids, params[:download])

		if params[:download]
			sequences_json = JSON.parse(sequences.to_json)

			File.open(sequences.file.path, 'w') do |file|
				file.truncate(0)
				sequences_json['sequences'].each do |sequence|
					file.puts ">#{sequence['id']} #{sequence['title']}"
					sequence['value'].split(/(.{75})/).reject(&:blank?).each { |sequence_split| file.puts sequence_split }
				end
			end

			return send_file(sequences.file.path, filename: "#{sequences.filename}.#{sequences.mime}")
		end

		render json: sequences.to_json
	end

	def download
		output = SequenceServer::BLAST::Formatter.new(params[:search_id], params[:type])
		send_file output.file.path, filename: "#{output.filename}.#{output.mime}"
	end
end
