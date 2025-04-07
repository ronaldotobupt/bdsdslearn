package com.ronaldosantos.dslearn.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_content")
public class Content extends Lesson {
	
	private String textContent;
	private String videroUri;
	
	public Content() {
		
	}

	public Content(Long id, String title, Integer position, Section section, String textContent, String videroUri) {
		super(id, title, position, section);
		this.textContent = textContent;
		this.videroUri = videroUri;
	}

	public String getTextContent() {
		return textContent;
	}

	public void setTextContent(String textContent) {
		this.textContent = textContent;
	}

	public String getVideroUri() {
		return videroUri;
	}

	public void setVideroUri(String videroUri) {
		this.videroUri = videroUri;
	}

}
