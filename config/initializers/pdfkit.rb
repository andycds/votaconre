PDFKit.configure do |config|
	wkhtmltopdf_executable = '/usr/bin/wkhtmltopdf'
	config.wkhtmltopdf = Rails.root.join('bin', wkhtmltopdf_executable).to_s
	config.default_options = { page_size: 'A5', print_media_type: true }
end
