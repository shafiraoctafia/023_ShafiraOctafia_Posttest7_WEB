<?php

    require 'config.php';
    
    // Menangkap id dari url yang dikirimkan
    if(isset($_GET['id'])){
        $id = $_GET['id'];
    }

    // Tampilkan value inputan dari id
    $result = mysqli_query($db, 
    "SELECT * FROM visitors WHERE id='$id'");
    $row = mysqli_fetch_array($result);

    if(isset($_POST['submit'])){
        $Nama = $_POST['nama'];
        $NoHp = $_POST['no_hp'];
        $Email = $_POST['email'];
        $Password = $_POST['password'];
        $Gender = $_POST['Gender'];
        $Tanggal_Bergabung = $_POST['Tanggal_Bergabung'];

        $gambar = $_FILES['Picture']['name'];
        $x = explode('.', $gambar);
        $ekstensi = strtolower(end($x));
        $gambar_baru = "$Nama.$ekstensi";

        $tmp = $_FILES['Picture']['tmp_name'];
        if(move_uploaded_file($tmp, "Picture/".$gambar_baru)){
            $result = mysqli_query($db, 
            "UPDATE visitors SET
            Nama='$Nama',
            no_hp='$NoHp',
            Email='$Email',
            Pasword='$Password',
            Gender='$Gender',
            Tanggal_Bergabung='$Tanggal_Bergabung'
            WHERE id='$id'
            ");

            if($result){
                echo "
                    <script>
                        alert('Data Berhasil Di Update');
                        document.location.href = 'hasilform.php';
                    </script>           
                ";
            }else{
                echo "
                    <script>
                        alert('Data Gagal Di Update');
                    </script>           
                ";
            }
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet.css">
    <title>DFood Recommendations</title>
</head>
<body>
    <div class="main">
        <div class="navbar">
            <div class="header-logo"> 
                Food Recommendations 
            </div>
            <div class="nav-sub">
                <ul class="header-nav">
                    <li><a class="menu" href="#" title="User">User</a></li>
                    <li><a class="menu" href="index.php" title="Home">Home</a></li>
                    <li><a class="menu" href="about.html" title="AboutMe">AboutMe</a></li>
                    <li><a class="menu" href="#" title="Contact">Contact</a></li>
                </ul>
                <ul class="mode">
                    <button class="dark" onclick="modedark()" >Dark Mode</button>
                    <button class="light" onclick="modedark()" >Light Mode</button>
                </ul>
            </div>
        </div>
        <h1 align="center">Edit Data Pengunjung</h1>
        <form action="" method="post" enctype="multipart/form-data">
            <table>
            <div class="formgrup1">
                    <label>Nama :</label>
                    <input type="text" name="nama" placeholder="Nama lengkap..." />
            </div>
            <div class="formgrup1">
                    <label>No.Handphone:</label>
                    <input type="number" name="no_hp" placeholder="No.Handphone..." />
            </div>
            <div class="formgrup1">
                    <label>Email:</label>
                    <input type="email" name="email" placeholder="Email..." />
            </div>
            <div class="formgrup1">
                    <label>Password:</label>
                    <input type="password" name="password" placeholder="Password..." />
            </div>
            <!-- <div class="formgrup1">
                    <label>Tanggal:</label>
                    <input type="Tanggal" name="Tanggal" placeholder="Tanggal..." />
            </div> -->
            <div class="formgrup">
                    <label>Gender:</label>
                    <label><input type="radio" name="Gender" value="laki-laki" /> Laki-laki</label>
                    <label><input type="radio" name="Gender" value="perempuan" /> Perempuan</label>
            </div>
            <div class="formgrup1">
                    <label>Picture : </label>
                    <input type="file" name="Picture"/>
            </div>
            <div class="formgrup">
                <input type="hidden" name="Tanggal_Bergabung" value=<?=date("d-m-Y")?>>
                <input type="submit" name="submit" class="submit" value="Submit" />
            </div>
            </table>
        </form>
    </div>
</body>
</html>