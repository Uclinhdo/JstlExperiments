/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
(function(){
    ("#loanForm").validate({
        errorElement: 'span',
        errorClass: 'error',
		rules:{
			salary:{
				required:true,
				digits: true
			},
			credit:{
				required: true,
				digits: true
			},
			month:{
				required: true,
				digits: true
			}
		},
		messages:{
			salary:{
				required : "Please fill input",
				digits: "Please enter only digits"	
			},
			credit:{
				required : "Please fill input",
				digits: "Please enter only digits"	
			},
			month:{
				required : "Please fill input",
				digits: "Please enter only digits"
			}
		}
	});
  
    });
