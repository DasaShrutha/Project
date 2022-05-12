$(document).on('rails_admin.dom_ready', function () {
	// Make 'Required' red in forms
	$('span.help-block').each(function () {
		element = $(this);
		if (/\bRequired\b/i.test(element.html()))
			element.css('color', 'red');
	});

	// Sign Out Confirmation
	$('a[href="/users/sign_out"]').attr('data-confirm', 'Are you sure you want to Sign Out?');

	// Active Storage remove attachment reference on delete
	$('li.attachment').remove();
	$('li.blob').remove();

	// Configuration form change input type on dropdown change
	$(document).on('change', '#configuration_value_type', function () {
		$('#configuration_value').prop('type', $(this).val());
	});
});
