<?php include('database.php') ?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title> Data Siswa </title>

  <link rel="icon" type="image/png" href="gambar/iconmmten.png">
  <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
<?php
    $sql = "select pegawai.id_pegawai as id, pegawai.nama as nama_pegawai, posisi.nama as nama_posisi from pegawai, posisi where pegawai.id_posisi = posisi.id_posisi";
    if(@$_GET['q']) {
        $search = $_GET['q'];
        $sql .= " and (pegawai.nama like '%{$search}%' or posisi.nama like '%{$search}%')";
    }
    $result = mysql_query($sql);
?>

<div id = 'wrapper'>
      <div id='header'>
        <img src="gambar/logocoretan.png" alt='logo'>
        <ul id='menu-utama'>
          <li><a href="">Pelajaran</a></li>
          <li><a href="">Siswa</a></li>
          <li><a href="">Home</a></li>
        </ul>
        <!-- <form>
          <input type="text" name="search" />
        </form> -->
      <!-- </div> -->
      </div>
      <div id='header2'>
    
        <img src="gambar/mmten.png" alt='logo'>
      </div>
      <div id='header3'></div>
  </div>
  <div id="isi">
  <div id=daftar-artikel>
    
    <div class="artikel">
      <?php require_once('database.php');

      $id=$_GET['id'];
      $sql = "select * from artikel where id_artikel = $id";
$result = mysql_query($sql);
while($data=mysql_fetch_array($result)){
               ?> 
      <img src="gambar/<?php echo $data['gambar_artikel']; ?>" alt='Gambar Artikel'/>
      <h2><?php echo $data['judul_artikel'];?></h2>
      <b>16 September 2016</b>
      <p><?php echo $data['isi_artikel'];?></p>
        <?php } ?>
      
    </div>
   
  
  </div>

  <div id='sidebar'>
    <h3>piye kabare cak ?</h3>
    <p>ini hanya coba-coba, tapi ingat jangan buat coba-coba</p>

    <h3>Artikel berdasarkan kategori</h3>
    <ul>
      <li><a href="">Html dan CSS</a></li>
      <li><a href="">PHP dan Mysql</a></li>
      <li><a href="">Java Scrip</a></li>
      <li><a href="">JSON</a></li>
    </ul>
  </div>
  </div> <!-- isi -->
  <div id="footer">
    <p>coretan.net copyright 2016 by Hasan, Tholchah</p>
  </div>


</body>
</html>