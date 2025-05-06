<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Daftar Buku Perpustakaan</title>
    <style>
        :root {
            --primary-color: #4361ee;
            --secondary-color: #3f37c9;
            --accent-color: #4895ef;
            --light-color: #f8f9fa;
            --dark-color: #212529;
            --success-color: #4cc9f0;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa;
            color: var(--dark-color);
            line-height: 1.6;
            padding: 0;
            margin: 0;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }
        
        .header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 2rem 0;
            text-align: center;
            margin-bottom: 2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .header h1 {
            font-size: 2.5rem;
            font-weight: 700;
            letter-spacing: 1px;
        }
        
        .book-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
        }
        
        .book-table thead {
            background: linear-gradient(to right, var(--primary-color), var(--accent-color));
            color: white;
        }
        
        .book-table th {
            padding: 1.2rem 1rem;
            text-align: left;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.85rem;
            letter-spacing: 0.5px;
        }
        
        .book-table td {
            padding: 1rem;
            border-bottom: 1px solid #e9ecef;
            vertical-align: middle;
        }
        
        .book-table tbody tr:last-child td {
            border-bottom: none;
        }
        
        .book-table tbody tr:hover {
            background-color: rgba(72, 149, 239, 0.1);
            transition: all 0.2s ease;
        }
        
        .book-table tbody tr:nth-child(even) {
            background-color: #f8f9fa;
        }
        
        .book-table tbody tr:nth-child(even):hover {
            background-color: rgba(72, 149, 239, 0.1);
        }
        
        .badge {
            display: inline-block;
            padding: 0.35rem 0.65rem;
            font-size: 0.75rem;
            font-weight: 700;
            line-height: 1;
            text-align: center;
            white-space: nowrap;
            vertical-align: baseline;
            border-radius: 50rem;
            background-color: var(--success-color);
            color: white;
        }
        
        .footer {
            text-align: center;
            margin-top: 2rem;
            color: #6c757d;
            font-size: 0.9rem;
        }
        
        @media (max-width: 768px) {
            .container {
                padding: 1rem;
            }
            
            .header h1 {
                font-size: 1.8rem;
            }
            
            .book-table {
                display: block;
                overflow-x: auto;
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="container">
            <h1>📚 Koleksi Buku Perpustakaan</h1>
        </div>
    </div>
    
    <div class="container">
        <table class="book-table">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Judul Buku</th>
                    <th>Pengarang</th>
                    <th>Tahun Terbit</th>
                    <th>Penerbit</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="buku" items="${daftarBuku}" varStatus="loop">
                    <tr>
                        <td><span class="badge">${loop.index + 1}</span></td>
                        <td><strong>${buku.judul}</strong></td>
                        <td>${buku.pengarang}</td>
                        <td>${buku.tahunTerbit}</td>
                        <td>${buku.penerbit}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <div class="footer">
            <p>QUIZ Pemograman Java Lanjut | Tian Sanjaya Junaedi - 22110399</p>
        </div>
    </div>
</body>
</html>