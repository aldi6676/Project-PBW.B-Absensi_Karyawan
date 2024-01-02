<?php
$koneksi = mysqli_connect("localhost", "root", "", "sistem_karyawan");

if (mysqli_connect_errno() > 0) {
  echo "Connection to database failed: " . mysqli_connect_error();
}
