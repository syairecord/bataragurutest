void main() {
  List<Karyawan> listKaryawan = [];
  Karyawan agus = Karyawan(1, 'Agus', 8000000, 'Junior Officer', 'Semarang');
  Karyawan dina = Karyawan(2, 'Dina', 15000000, 'Ass Manager', 'Bandung');
  Karyawan joko = Karyawan(3, 'Joko', 25000000, 'Manager', 'Jakarta');
  Karyawan ahmad = Karyawan(4, 'Ahmad', 13000000, 'Middle Officer', 'Jakarta');
  Karyawan felicia =
      Karyawan(5, 'Felicia', 12500000, 'Middle Officer', 'Bandung');

  listKaryawan.add(agus);
  listKaryawan.add(dina);
  listKaryawan.add(joko);
  listKaryawan.add(ahmad);
  listKaryawan.add(felicia);

  for (int i = 0; i < listKaryawan.length; i++) {
    var karyawan = listKaryawan[i];
    var nama = karyawan.nama;
    var gaji = karyawan.gaji;
    var jabatan = karyawan.jabatan;
    var region = karyawan.region;

    double bonusGaji = 0;
    double bonusJabatan = 0;
    double potongan = 0;
    double totalPenghasilan = 0;

    // menghitung bonus berdasarkan besar gaji
    if (gaji >= 15000000) {
      bonusGaji = gaji * 10 / 100;
    } else if (gaji >= 10000000 && gaji < 15000000) {
      bonusGaji = gaji * 12 / 100;
    } else {
      bonusGaji = gaji * 15 / 100;
    }

    // menghitung bonus karyawan berdasarkan jabatan
    switch (jabatan) {
      case "Manager":
        bonusJabatan = 250000;
        break;
      case "Ass Manager":
        bonusJabatan = 175000;
        break;
      case "Senior Officer":
        bonusJabatan = 150000;
        break;
      case "Middle Officer":
        bonusJabatan = 125000;
        break;
      case "Junior Officer":
        bonusJabatan = 100000;
        break;
    }
    // menghitung potongan berdasarkan region
    if (region == "Jakarta") {
      potongan = gaji * 2.5 / 100;
    } else if (region == "Bandung") {
      potongan = gaji * 2 / 100;
    } else {
      potongan = gaji * 1.8 / 100;
    }

    // print nama dan penghasilan total
    totalPenghasilan = gaji + bonusGaji + bonusJabatan - potongan;
    print(
        "Total Penghasilan " + nama + " adalah " + totalPenghasilan.toString());
  }
}

class Karyawan {
  int id;
  String nama;
  int gaji;
  String jabatan;
  String region;

  Karyawan(this.id, this.nama, this.gaji, this.jabatan, this.region);
}
