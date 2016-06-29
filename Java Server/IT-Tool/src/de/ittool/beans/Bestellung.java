package de.ittool.beans;

public class Bestellung {

	//Attribute
	private int id;
	private int kundenid;
	private int status;
	
	//Konstruktor
	Bestellung(int kundenid){
		this.kundenid = kundenid;
		this.status = 1; //1 f�r z.B."in Bearbeitung"
		//id siehe Klasse Kunde
	}
	
	//Methoden
	public boolean addPosition(int id){
		//was soll hier genau passieren? wegen dem Boolean die Frage.
		return true;
	}
	
	public int getStatus(){
		return this.status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
