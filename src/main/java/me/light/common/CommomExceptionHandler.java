package me.light.common;

import org.springframework.beans.TypeMismatchException;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class CommomExceptionHandler {

	@ExceptionHandler(NoHandlerFoundException.class)
	@ResponseStatus(code = HttpStatus.NOT_FOUND)
	public String notFoundPage(NoHandlerFoundException exception, Model model) {
		System.out.println(exception.getRequestURL());
		model.addAttribute("url", exception.getRequestURL());
		return "errorPage/_404";
	}
	
	@ExceptionHandler(TypeMismatchException.class)
	@ResponseStatus(code = HttpStatus.BAD_REQUEST)
	public String badRequestHandle(TypeMismatchException exception) {
		return "errorPage/_400";
	}
}
