# First-Order Logic in Prolog  
2306149 Vito Gunawan  

Repositori ini berisi implementasi **First-Order Logic (FOL)** menggunakan **Prolog** untuk merepresentasikan hubungan keluarga berdasarkan diagram pohon keluarga.  

## 📌 Struktur Program  

Program ini mendefinisikan beberapa **fakta** dan **aturan** dalam **Prolog**, seperti:  
- **Fakta**: Jenis kelamin, pernikahan, hubungan orang tua-anak, saudara kandung, dan sepupu.  
- **Aturan**: Relasi saudara kandung, sepupu, keponakan, serta aturan pernikahan yang diperbolehkan.  

### **Fakta yang Didefinisikan**  
- **Jenis Kelamin**:  
  - Laki-laki: `david, jack, john, ray, peter`  
  - Perempuan: `amy, karen, liza, susan, mary`  
- **Pernikahan**:  
  - `david menikah dengan amy`  
  - `jack menikah dengan karen`  
  - `john menikah dengan susan`  
- **Hubungan Keluarga**:  
  - **Saudara Kandung**: `liza dan john`, `susan dan ray`, `peter dan mary`  
  - **Sepupu**: `liza - susan`, `liza - ray`, `john - susan`, `john - ray`  
  - **Keponakan**: `peter & mary (keponakan liza dan ray)`  
  - **Orang Tua - Anak**: Didefinisikan dalam aturan `ayah(X, Y)` dan `ibu(X, Y)`.  

### **Aturan yang Didefinisikan**  
- **Pengecekan hubungan**:  
  - `is_cowo(X)` → Memeriksa apakah X adalah laki-laki  
  - `is_cewe(Y)` → Memeriksa apakah Y adalah perempuan  
  - `is_menikah(X, Y)` → Memeriksa apakah X dan Y menikah  
  - `is_saudaraKandung(X, Y)` → Memeriksa hubungan saudara kandung  
  - `is_sepupu(X, Z)` → Memeriksa hubungan sepupu  
  - `is_keponakan(X, Y)` → Memeriksa hubungan keponakan  
  - `is_ayah(Y, Z)` → Memeriksa apakah Y adalah ayah dari Z  
  - `is_ibu(X, Z)` → Memeriksa apakah X adalah ibu dari Z  
- **Aturan pernikahan yang diperbolehkan** (`boleh_menikah(X, Y)`)  
  - Pernikahan hanya diperbolehkan antara laki-laki dan perempuan.  
  - Tidak boleh menikah dengan saudara kandung, keponakan, ayah, atau ibu.  

## 🔧 Instalasi & Penggunaan  

### **1. Instal SWI-Prolog**  
Pastikan **SWI-Prolog** sudah terinstal di komputer Anda.  
Jika belum, silakan unduh dan instal dari:  
🔗 [SWI-Prolog Download](https://www.swi-prolog.org/Download.html)  

### **2. Clone Repositori**  
Jalankan perintah berikut untuk mengunduh repositori:  
```bash
git clone https://github.com/VitoGunawan/First_Order_Logic.git
cd First_Order_Logic
```

### **3. Jalankan Program di SWI-Prolog**  
1. Buka terminal atau command prompt.  
2. Masuk ke direktori repositori.  
3. Jalankan perintah berikut:  
   ```prolog
   swipl
   ```
4. Muat file Prolog dengan perintah:  
   ```prolog
   [silsilah_Keluarga_lanjutan].
   ```
5. Gunakan query untuk mengecek hubungan, misalnya:  
   ```prolog
   is_ayah(david, john).
   is_sepupu(liza, susan).
   boleh_menikah(jack, karen).
   ```  
   Jika jawaban `true`, maka hubungan tersebut benar. Jika `false`, hubungan tidak valid.  
