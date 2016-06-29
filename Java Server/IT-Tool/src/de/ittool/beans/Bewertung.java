package de.ittool.beans;

public class Bewertung {
	
	private int kundenid;
	private int sterne;
	private String text;
	
	Bewertung(int kundenid, String text, int sterne){
		this.kundenid = kundenid;
		this.text = text;
		this.sterne = sterne;
	}

	public int getKundenid() {
		return kundenid;
	}

	public void setKundenid(int kundenid) {
		this.kundenid = kundenid;
	}

	public int getSterne() {
		return sterne;
	}

	public void setSterne(int sterne) {
		this.sterne = sterne;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
	
	
}
	