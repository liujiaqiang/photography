package com.stardream.project.photography.exception;

@SuppressWarnings("serial")
public class PhotoGraphyException extends Exception {

	public PhotoGraphyException(String message){
		super(message);
		System.out.println(message);
	}
	
	public PhotoGraphyException(String message,Throwable cause){
		super(message,cause);
	}
}
