module Attached::HasOne
	extend ActiveSupport::Concern

	included do
		include ActionView::Helpers::UrlHelper

		delegate :url_helpers, to: 'Rails.application.routes'

		has_one_attached :attachment, dependent: :destroy

		default_scope {with_attached_attachment}

		before_destroy :purge_attachment, prepend: true
		after_rollback :purge_attachment

		validates :attachment, presence: true
		validate :attachment_file_type, if: -> {self.class::ATTACHMENT_TYPES.present?}
	end

	def filename
		attachment.filename
	end

	def attached
		link_to(filename, url_helpers.rails_blob_path(attachment, disposition: 'attachment'))
	end

	def is_image_attached?
		attachment.content_type.starts_with?('image/')
	end

	def is_video_attached?
		attachment.content_type.starts_with?('video/')
	end

	def is_pdf_attached?
		attachment.content_type.eql?('application/pdf')
	end

	def is_text_attached?
		attachment.content_type.eql?('text/plain')
	end

	def preview options = {}
		if is_image_attached?
			attachment
		elsif is_video_attached?
			attachment.preview(resize: options[:resize]).processed
		elsif is_pdf_attached?
			attachment.preview(resize: options[:resize]).processed
		elsif is_text_attached?
			attachment
		end
	rescue
		''
	end

	private

		def attachment_file_type
			errors.add :attachment, I18n.t("activerecord.errors.models.#{self.class.name.parameterize}.attributes.attachment.content_type") unless attachment.content_type.in?(self.class::ATTACHMENT_TYPES)
		end

		def purge_attachment
			attachment.purge
		end
end
