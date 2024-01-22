package controller;

import java.util.List;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value="/patients/")
public class PatientsController {
	
	@RequestMapping(value="list")
	public String list(){
		System.out.println("PatientController-list");
		return "patients/patientsList";
	}
	
	@RequestMapping(value="add")
	public String add(){
		System.out.println("PatientController-add");
		return "patients/addPatientsList";
	}
}
