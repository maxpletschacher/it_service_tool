package de.ittool.beans;
import java.io.Serializable;
import java.sql.Blob;

public class Produkt implements Serializable {
	private static final long serialVersionUID = 1L;

	//Attribute
	private int id;
	private String name;
	private String beschreibung;
	private String feature;
	private String bild1;
	private String bild2;
	private String bild3;
	private String kategorie;
	private int lagerbestand;
	private double preis;
	private Blob img1;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBeschreibung() {
		return beschreibung;
	}
	public void setBeschreibung(String beschreibung) {
		this.beschreibung = beschreibung;
	}
	public String getFeature() {
		return feature;
	}
	public void setFeature(String feature) {
		this.feature = feature;
	}
	public String getBild1() {
		return bild1;
	}
	public void setBild1(String bild1) {
		this.bild1 = bild1;
	}
	public String getBild2() {
		return bild2;
	}
	public void setBild2(String bild2) {
		this.bild2 = bild2;
	}
	public String getBild3() {
		return bild3;
	}
	public void setBild3(String bild3) {
		this.bild3 = bild3;
	}
	public String getKategorie() {
		return kategorie;
	}
	public void setKategorie(String kategorie) {
		this.kategorie = kategorie;
	}
	public int getLagerbestand() {
		return lagerbestand;
	}
	public void setLagerbestand(int lagerbestand) {
		this.lagerbestand = lagerbestand;
	}
	public String getLagerstatus(){
		if(this.lagerbestand>0){
			return "Auf Lager";
		}else{
			return "Ausverkauft";
		}
	}
	public String getLagerstatusStyle(){
		if(this.lagerbestand>0){
			return "green";
		}else{
			return "red";
		}
	}
	public double getPreis() {
		return preis;
	}
	public void setPreis(double preis) {
		this.preis = preis;
	}
	public Blob getImg1() {
		return img1;
	}
	public void setImg1(Blob img1) {
		this.img1 = img1;
	}
	
	
	
}
