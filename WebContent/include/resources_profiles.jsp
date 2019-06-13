<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- Contact Icon Menu -->
	<div id="menu-4" data-menu-size="385" class="menu-wrapper menu-light menu-bottom menu-contact">
		<div class="menu-scroll">
			<div class="contact-form">
				<div class="formSuccessMessageWrap" id="formSuccessMessageWrap">
					<p class="center-text full-bottom full-top"><i class="fa fa-2x fa-paper-plane-o"></i></p>
					<h4 class="uppercase ultrabold half-bottom center-text">Message Sent</h4>
					<p class="center-text boxed-text half-bottom">
						We usually reply in less than 24 hours. <br/> Thank you for getting in touch with us!
					</p>
					<a href="#" class="button button-round color-white button-blue button-xs button-center close-menu uppercase bold full-bottom full-top">Return to Site</a>
				</div>
				<form action="php/contact.php" method="post" class="contactForm" id="contactForm">
					<fieldset>
						<div class="menu-contact-title half-top">
							<h4>Let's get in Touch</h4>
							<h5 class="full-bottom">Get in touch with us. Send us a message and we'll get back to you in the shortest possible time!</h5>
						</div>
						<div class="formValidationError" id="contactNameFieldError">Name is required!</div>
						<div class="formValidationError" id="contactEmailFieldError">Mail address required!</div>
						<div class="formValidationError" id="contactEmailFieldError2">Mail address must be valid!</div>
						<div class="formValidationError" id="contactMessageTextareaError"></div>
						<div class="formFieldWrap">
							<label class="field-title contactNameField" for="contactNameField"></label>
							<input type="text" name="contactNameField" placeholder="John Doe" value="" class="contactField requiredField" id="contactNameField" />
						</div>
						<div class="formFieldWrap">
							<label class="field-title contactEmailField" for="contactEmailField"></label>
							<input type="text" name="contactEmailField" placeholder="mail@domain.com" value="" class="contactField requiredField requiredEmailField" id="contactEmailField" />
						</div>
						<div class="clear"></div>
						<div class="formTextareaWrap half-bottom">
							<label class="field-title contactMessageTextarea" for="contactMessageTextarea"></label>
							<textarea name="contactMessageTextarea" placeholder="Enter your message here." class="contactTextarea requiredField" id="contactMessageTextarea"></textarea>
						</div>
						<div class="contactFormButton">
							<input type="submit" class="buttonWrap contactSubmitButton" id="contactSubmitButton" value="Send Message" data-formId="contactForm" />
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>	