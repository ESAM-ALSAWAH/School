var input_pass = document.querySelector("#passcode");
var inputs = document.querySelectorAll(".main.active .input");



window.addEventListener("load", () => {
    inputs.forEach(function (inpt) {
       inpt.value=""
    })
})
var confirm_input_pass = document.querySelector("#confirm_passcode");


var next_button = document.querySelectorAll(".next-btn");
var previous_button = document.querySelectorAll(".prev-btn");
var submit_button = document.querySelectorAll(".submit");
var main_div = document.querySelectorAll(".main");
let formnum = 0;
next_button.forEach(function (btn) {
    btn.addEventListener('click', function (e) {
        e.preventDefault();
		if (!validate_form()) {
			return false;
		}
		formnum++;
		updateform();

	});

});

previous_button.forEach(function (btn) {

    btn.addEventListener('click', function (e) {
        e.preventDefault();
		
		formnum--;
		updateform();
	});

});


submit_button.forEach(function (butn) {
	butn.addEventListener('click', function () {
		if (!validate_form()) return false;
		var f_name = document.getElementById("f_name");
		var s_name = document.getElementById("s_name");
		formnum++;
		s_name.innerHTML = f_name.value;
		updateform();
	});
});











function updateform() {
	main_div.forEach(function (forms) {
		forms.classList.remove('active');
	});
	main_div[formnum].classList.add('active');

}



function validate_form() {

	var validate = true;
    var inputs = document.querySelectorAll(".main.active .input");
    
	inputs.forEach(function (inpt) {
		inpt.classList.remove('warning');
        
        if (inpt.value.length == 0 || inpt.value.trim()=="") {
				validate = false;
				inpt.classList.add('warning');
			}
		

	});

	return validate;

}