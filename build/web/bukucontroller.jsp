<%@ page import="model.Buku" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    // Membuat array of object Buku
    Buku[] daftarBuku = {
        new Buku("Pemrograman Java", "Budi Raharjo", 2018, "Informatika"),
        new Buku("Belajar JSP & Servlet", "Dian Pramana", 2020, "Elex Media"),
        new Buku("Algoritma dan Struktur Data", "Rinaldi Munir", 2019, "Andi Offset"),
        new Buku("Database Systems", "Thomas Connolly", 2015, "Pearson"),
        new Buku("Clean Code", "Robert C. Martin", 2008, "Prentice Hall")
    };
    
    // Menyimpan array ke dalam request attribute
    request.setAttribute("daftarBuku", daftarBuku);
%>

<jsp:forward page="bukuview.jsp" />