package de.ittool.beans;

public class Bestellposition {

	//Attribute
	private int id;
	private int produktid;
	private int anzahl;
	
	//Konstruktor
	Bestellposition(int produktid, int anzahl){
		this.produktid = produktid;
		this.anzahl = anzahl;
		//id siehe Klasse Kunde
	}
}
