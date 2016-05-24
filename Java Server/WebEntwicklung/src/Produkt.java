
public class Produkt {

	//Attribute
	private int id;
	private String name; // habe Produkt... Präfix rausgelassen da in Klasse Produkt
	private String beschreibung;
	private String feature;
	private int lagerbestand;
	private double preis;
	
	//Konstruktor
	Produkt(String name, String beschreibung, String feature, int lagerbestand, double preis){
		this.name = name;
		this.beschreibung = beschreibung;
		this.feature = feature;
		this.lagerbestand = lagerbestand;
		this.preis = preis;
		//ID siehe Klasse Kunde
	}
	
	//Methoden
	public Produkt getProdukt(int id){
		
		return Produkt abc;
	}
	
	public boolean bestellen(int id,int anzahl){
		this.lagerbestand =  this.lagerbestand - anzahl;
		if (this.lagerbestand >= 0){return true;}
		else{return false;}
		
	}
}
