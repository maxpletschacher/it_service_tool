package de.ittool.beans;

public class Kunde {
	
	//Attribute
	private int id;
	private String vorname;
	private String name;
	private String strasse;
	private String PLZ;
	private String ort;
	private String passwort; //Passwort ben�tigt noch eine Verschl�sselung.
	
	//Konstruktoren
	Kunde(String vorname, String name, String str, String PLZ, String ort, String passwort){
		this.vorname = vorname;
		this.name = name;
		this.strasse = strasse;
		this.PLZ = PLZ;
		this.ort = ort;
		this.passwort = passwort;
		//Nicht sicher wie die ID genutzt wird. Static? Ebenso wo die Vergabe der ID stattfindet 
	}
	
	//Methoden
	
	public Kunde getUser(int id){ //Ich wei� nicht wie ich auf die Tabellenstruktur zugreifen kann
		Kunde kundenInformation;
		return this;
	}
	
	public Kunde getUser(String name){ //gleiche wie oben
		
		return this;
	}
	
	public boolean checkPwd(String passwort){ //brauche ich hier keine id?
		
		return true;
	}
}
