package model;

public class Buku {
    private String judul;
    private String pengarang;
    private int tahunTerbit;
    private String penerbit;
    
    public Buku(String judul, String pengarang, int tahunTerbit, String penerbit) {
        this.judul = judul;
        this.pengarang = pengarang;
        this.tahunTerbit = tahunTerbit;
        this.penerbit = penerbit;
    }
    
    // Getter methods
    public String getJudul() {
        return judul;
    }
    
    public String getPengarang() {
        return pengarang;
    }
    
    public int getTahunTerbit() {
        return tahunTerbit;
    }
    
    public String getPenerbit() {
        return penerbit;
    }
}