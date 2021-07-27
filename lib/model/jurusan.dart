class Jurusan {
  String nama;
  String deskripsi;
  String imageUrl;
  List<Prodi> prodi;

  Jurusan({this.nama, this.imageUrl, this.deskripsi, this.prodi});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'nama': nama,
      'deskripsi': deskripsi,
      'imageUrl': imageUrl,
      'prodi': prodi
    };
    return map;
  }

  Jurusan.fromMap(Map<String, dynamic> map) {
    nama = map['nama'];
    deskripsi = map['deskripsi'];
    imageUrl = map['imageUrl'];
    prodi = map['prodi'];
  }
}

class Prodi {
  String namaProdi;
  String deskripsi;
  String badge;
  String imageUrl;
  List<String> fasilitas;

  Prodi(
      {this.namaProdi,
      this.deskripsi,
      this.badge,
      this.imageUrl,
      this.fasilitas});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'namaProdi': namaProdi,
      'deskripsi': deskripsi,
      'fasilitas': fasilitas
    };
    return map;
  }

  Prodi.fromMap(Map<String, dynamic> map) {
    namaProdi = map['namaProdi'];
    deskripsi = map['deskripsi'];
    fasilitas = map['fasilitas'];
  }
}

var daftarJurusan = [
  Jurusan(
    nama: "Teknik Mesin",
    imageUrl:
        "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/mesin.jpg",
    deskripsi:
        """Menghasilkan tenaga kerja yang profesional dalam bidang permesinan dan tanggap terhadap perkembangan ilmu pengetahuan dan teknologi permesinan khususnya dalam bidang perawatan & perbaikan mesin dan mesin produksi.""",
    prodi: [
      Prodi(
          namaProdi: "D3 Teknik Mesin",
          deskripsi:
              """Menitik beratkan pada pembentukan tenaga ahli/terampil dalam sistem perencanaan kegiatan perawatan, perbaikan, program kerja perawatan, instalasi pabrik, merancang mesin-mesin sederhana, mengoperasikan mesin konvensional dan otomatis.
Menitik beratkan dalam bidang teknik menggambarkan elemen mesin dengan menggunakan komputer, mengatur kegiatan produksi, melaksanakan program kerja produksi serta mampu mengoperasikan mesin konvensional dan otomatis.""",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/mesin.jpg',
          fasilitas: [
            'Lab. Komputer',
            'Lab. CNC',
            'Lab. Pneumatik Hirdolik',
            'Lab. Maintenance',
            'Lab. Produksi',
            'Lab. Pengujian Bahan & Metrologi',
            'Lab. Mekanika Fluida & Hidrolika',
            'Bengkel las',
            'Bengkel bubut',
            'Bengkel milling',
            'Bengkel grinding/gerinda',
            'Bengkel sheet metal'
          ]),
      Prodi(
          namaProdi: "D3 Teknik Alat Berat",
          deskripsi:
              """Menitik beratkan pada pembentukan tenaga ahli/terampil yang memiliki dasar-dasar ilmu keteknikan dan alat berat serta mampu bekerja dengan menggunakan workshop tools dan workshop equipment dengan benar dan aman sesuai dengan service literature. Mampu mengindentifikasi komponen-komponen alat berat yang meliputi engine, sistem hidroulik, sistem elektrik, power train dan under carriage. Mampu melakukan pengetesan dan penyetelan pada komponen-komponen alat berat serta memiliki kemampuan dasar dalam troubleshooting.
Program studi Teknik Alat Berat ini merupakan kerjasama antara Politeknik Negeri Padang dengan PT.Trakindo Utama dan satu-satunya di Sumatera. Tujuan utamanya adalah untuk memenuhi kebutuhan kekurangan tenaga ahli Teknik Alat Berat di Indonesia, khususnya di Sumatera.""",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://penerimaan.pnp.ac.id/images/AlatBerat.jpg',
          fasilitas: [
            'Excavator',
            'Buldozer',
            'Lab. Pengujian Bahan',
            'Workshop Produksi',
            'Workshop Perawatan & Perbaikan',
            'Laboratorium CNC',
            'Laboratorium Komputer',
            'Studio Gambar dan Perancangan',
            'Laboratorium Refrigerasi & Pengkondisian Udara'
          ]),
      Prodi(
          namaProdi: "D4 Teknik Manufaktur",
          deskripsi:
              """Menghasilkan lulusan yang berkualitas dan profesional di bidang teknik manufaktur yang kompetitif di pasar kerja, baik regional, nasional maupun internasional dalam menciptakan daya manusia di bidang manufaktur yang berkualitas dan tanggap terhadap perubahan dan perkembangan pasar dan industri.""",
          badge: 'assets/icon/d4icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/mesin.jpg',
          fasilitas: [
            'Labor Produksi',
            'Labor Maintenance',
            'Labor Komputer',
            'Labor Pengujian Bahan dan Metrologi',
            'Labor Fluida dan Hidrolika',
            'Bengkel Grinding / Gerinda',
            'Bengkel Milling'
          ]),
    ],
  ),
  Jurusan(
    nama: "Teknik Elektro",
    imageUrl:
        "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/LISTRIK.jpg",
    deskripsi:
        """Menghasilkan tenaga kerja yang profesional dalam bidang teknik elektro yang sesuai dengan kompetensi yang dibutuhkan.""",
    prodi: [
      Prodi(
          namaProdi: "D3 Teknik Listrik",
          deskripsi:
              """Berorientasi dalam bidang penerapan tentang instalasi penerangan & tenaga, teknologi pembangkit. Sistem distribusi listrik, perawatan/perbaikan mesin-mesin industri serta perancangan dan pengembangan teknik instrumentasi dan kontrol industri. Menghasilkan tenaga kerja yang profesional dalam bidang teknik elektro yang sesuai dengan kompetensi yang dibutuhkan.""",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/LISTRIK.jpg',
          fasilitas: [
            "Lab PLC",
            "Lab. Listrik Dasar",
            "Labor Elektronika Daya",
            "Lab. Rancangan Listrik",
            "Lab. Jaringan Tegangan Tinggi",
            "Lab. Instrumentasi & Sistem Kendali",
            "Lab. Komputer",
            "Bengkel Kerja Mekanik",
            "Bengkel Instalasi Listrik",
            "Labor PLTMH"
          ]),
      Prodi(
          namaProdi: "D3 Teknik Elektronika",
          deskripsi:
              """Menitik beratkan dalam bidang elektronika industri, meliputi perancangan rangkaian elektronika industri, menganalisis untuk perbaikan dan perawatan control serta mengaplikasikan komputer dan mikrocontroller untuk industri.""",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/LISTRIK.jpg',
          fasilitas: [
            "Lab. Komputer",
            "Lab. Miroprosesor",
            "Lab. Instrumentasi",
            "Lab. Sistem Kontrol",
            "Lab. Analog & Digital",
            "Lab. Elektronika Dasar",
            "Lab. M&R Elektronika",
            "Labor PLTMH",
            "Bengkel Mekanik",
            "Lab. Elektronika Industri"
          ]),
      Prodi(
          namaProdi: "D3 Teknik Telekomunikasi",
          deskripsi:
              """Berorientasi dalam bidang telekomunikasi kawat & radio khusunya merancang sistem komunikasi dengan trasmisi udara (wireless) dan trasmisi kawat (on-wire), membuat prototype, memasang jaringan telekomunikasi, merawat dan memperbaiki serta mendiagnosis kerusakan peralatan telekomunikasi multimedia.""",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/LISTRIK.jpg',
          fasilitas: [
            "Labor Antena",
            "Labor Jaringan",
            "Labor Mekanik",
            "Labor Komputer",
            "Labor Mikroprosesor",
            "Labor Pengolahan Sinyal",
            "Labor Dasar Telekomunikasi",
            "Labor Rangkaian Elektronika",
            "Labor Komunikasi Bergerak"
          ]),
      Prodi(
          namaProdi: "D4 Teknik Elektronika",
          deskripsi:
              """Menghasilkan lulusan yang menguasi kemampuan dalam melaksanakan pekerjaan membangun sistem elektronika dan instrumentasi di industri, Menguasi kemampuang dalam bidang Maintenance & Ripair , peralatan-peralatan instrumentasi, sistem kendali dan robotika, serta sistem komputer, menguasi kemampuan menerapkan sistem kendalil terprogram pada sistem kontrol di industri dengan optimal, andal, kontinyu dan aman menggunakan PLC, SCDA, sistem jaringan komputer, microcontroller dan DSP.""",
          badge: 'assets/icon/d4icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/LISTRIK.jpg',
          fasilitas: [
            "Labor Elektronika",
            "Labor Digital",
            "Labor Sistem Kendali",
            "Labor Mikroprosesor & Mikrokontroller",
            "Labor Sistem Kendali",
            "Labor Otomasi dan Robotika",
            "Labor Maintenance & Repair"
                "Labor Instrumentasi Industri",
            "Labor Elektronika Industri",
            "Labor VLSI"
          ]),
      Prodi(
          namaProdi: "D4 Teknik Telekomunikasi",
          deskripsi:
              """Menghasilkan lulusan yang berkarakter dan mampu berkompetisi ditingkat nasional yang menguasai ilmu pengetahuan dan teknologi terapan dibidang telekomunikasi sesuai kebutuhan industri.""",
          badge: 'assets/icon/d4icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/LISTRIK.jpg',
          fasilitas: [
            "Labor Antena",
            "Labor Jaringan",
            "Labor Mekanik",
            "Labor Komputer",
            "Labor Mikroprosesor",
            "Labor Pengolahan Sinyal",
            "Labor Dasar Telekomunikasi",
            "Labor Rangkaian Elektronika",
            "Labor Komunikasi Bergerak"
          ]),
      Prodi(
          namaProdi: "D4 Teknologi Rekayasa Instalasi Listrik",
          deskripsi:
          """Menghasilkan lulusan yang berkarakter dan mampu berkompetisi ditingkat nasional yang menguasai ilmu pengetahuan dan teknologi terapan dibidang telekomunikasi sesuai kebutuhan industri.""",
          badge: 'assets/icon/d4icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/LISTRIK.jpg',
          fasilitas: [
            "Labor Antena",
            "Labor Jaringan",
            "Labor Mekanik",
            "Labor Komputer",
            "Labor Mikroprosesor",
            "Labor Pengolahan Sinyal",
            "Labor Dasar Telekomunikasi",
            "Labor Rangkaian Elektronika",
            "Labor Komunikasi Bergerak"
          ]),
    ],
  ),
  Jurusan(
    nama: "Teknik Sipil",
    imageUrl:
        "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/Rekayasa-Konstruksi.jpg",
    deskripsi:
        """Menciptakan tenaga kerja profesional dalam bidang Teknik Sipil, yang sanggup melaksanakan pembangunan proyek-proyek teknik Sipil di lapangan, berkonsentrasi pada konstruksi bangunan gedung dan Konstruksi Bangunan Sipil.""",
    prodi: [
      Prodi(
          namaProdi: "D3 Teknik Sipil",
          deskripsi: "",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/Rekayasa-Konstruksi.jpg',
          fasilitas: [
            "Labor Material",
            "Labor Hidrolika",
            "Labor Mekanika Tanah",
            "Labor Struktur",
            "Labor Ilmu Ukur Tanah",
            "Labor komputer",
            "Bengkel Kayu",
            "Bengkel Baja",
            "Bengkel Plumbing",
            "Bengkel Beton",
            "Bengkel Tepat guna",
            "Bengkel Acuan Perancah",
            "Bengkel Drainage",
            "Bengkel Batu"
          ]),
      Prodi(
          namaProdi: "D4 Teknik Perencanaan Irigasi dan Rawa",
          deskripsi:
              """Merupakan program lanjutan dari lulusan Diploma III dari program studi Teknik Sipil dan D.III yang Relevan. Program studi ini menghasilkan lulusan yang terampil dan handal dalam bidang perencanaan dan pelaksanaan bangunan irigasi dan rawa.""",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/Rekayasa-Konstruksi.jpg',
          fasilitas: [
            "Labor Material",
            "Labor Hidrolika",
            "Labor Mekanika Tanah",
            "Labor Struktur",
            "Labor Ilmu Ukur Tanah",
            "Labor komputer",
            "Bengkel Tepat guna",
            "Bengkel Acuan Perancah",
            "Bengkel Drainage",
          ]),
      Prodi(
          namaProdi: "D4 Manajemen Rekayasa Konstruksi",
          deskripsi:
              """Menghasilkan tenaga profesional di bidang manajerial khususnya pada proyek konstruksi dan mampu menyusun tahapan-tahapan perwujudan proyek konstruksi, yang dimulai dari tahap penyusunan ide, studi kelayakan, perencanaan/perancangan, hingga tahap pelaksanaan (termasuk pengawasan pelaksanaannya) serta penggunaan dari suatu proyek konstruksi. Melahirkan tenaga manajemen rekayasa konstruksi yang profesional, yang mampu mengidentifikasi, menganalisis, pengawasan, dan pengendalian terhadap risiko dari suatu pengambilan keputusan pada proyek konstruksi serta melahirkan tenaga manajemen rekayasa konstruksi yang mampu melakukan pengawasan dan pengendalian serta memberikan jaminan mutu (Quality Assurance) terhadap mutu pekerjaan suatu proyek konstruksi.""",
          badge: 'assets/icon/d4icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/Rekayasa-Konstruksi.jpg',
          fasilitas: [
            "Labor Material",
            "Labor Hidrolika",
            "Labor Mekanika Tanah",
            "Labor Struktur",
            "Labor Ilmu Ukur Tanah",
            "Labor komputer",
            "Bengkel Tepat guna",
            "Bengkel Beton",
            "Bengkel Drainage",
            "Bengkel Batu"
          ]),
    ],
  ),
  Jurusan(
    nama: "Administrasi Niaga",
    imageUrl:
        "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/administrasi-bisnis.jpg",
    deskripsi:
        """Jurusan Administrasi Niaga memiliki Program Studi D3 Administrasi Bisnis dan D3 Usaha Perjalanan Wisata.""",
    prodi: [
      Prodi(
          namaProdi: "D3 Administrasi Bisnis",
          deskripsi:
              """Menghasilkan tenaga Ahli Madya profesional dalam bidang kesekretariatan dan administrasi perkantoran sesuai dengan kebutuhan dunia usaha dan dunia industri yang berkeahlian tinggi dalam menagani operasi perkantoran dan berwawasan konseptual yang baik untuk mengembangkan sistem perkantoran bisnis secara menyeluruh.""",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/administrasi-bisnis.jpg',
          fasilitas: [
            "Labor Perkantoran",
            "Labor Pengetikan Manual",
            "Labor Pengetikan Elektrik",
            "Labor Simulasi Bisnis",
            "Labor Komputer"
          ]),
      Prodi(
          namaProdi: "D3 Usaha Perjalanan Wisata.",
          deskripsi:
              """Menghasilkan lulusan yang dalam merancang tour, baik inbound maupun outbond, melakukan reservasi dan dokumentasi tour, melakukan pemanduan (guiding) wisata.""",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/administrasi-bisnis.jpg',
          fasilitas: [
            "Labor Ticketing",
            "Labor Simulasi Bisnis",
            "Labor Komputer",
            "Labor Bahasa",
            "Labor Pengetikan",
            "Labor Internet",
            "Bus Pariwisata"
          ]),
    ],
  ),
  Jurusan(
    nama: "Akuntansi",
    imageUrl:
        "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_640,h_424/https://www.pnp.ac.id/wp-content/uploads/2018/05/akuntansi-d3.jpg",
    deskripsi:
        """Jurusan Akuntansi memiliki Program Studi DIV Akuntansi Perpajakan dan D3 Akuntansi.""",
    prodi: [
      Prodi(
          namaProdi: "D3 Akuntansi",
          deskripsi:
              """Menciptakan lulusan yang mampu dan terampil dalam bidang seperti: Asistant Accounting, Financial Computer System, Internal Auditor, Asistant Auditor, Asistant Analisis System, menghitung dan membuat laporan pajak.""",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_640,h_424/https://www.pnp.ac.id/wp-content/uploads/2018/05/akuntansi-d3.jpg',
          fasilitas: [
            "Labor Komputer Akuntansi",
            "Labor Praktek Akuntansi",
            "Labor Praktek Kerja Anggaran dan Manufaktur",
            "Labor Praktek Akuntansi Pemeriksaan",
            "Labor Anggaran",
            "Labor Sistem Informasi Akuntansi",
            "Labor Anggaran Bank Mini"
          ]),
      Prodi(
          namaProdi: "D4 Akuntansi",
          deskripsi:
              """Menciptakan lulusan yang mampu dan terampil dalam bidang seperti: Asistant Accounting, Financial Computer System, Internal Auditor, Asistant Auditor, Asistant Analisis System, menghitung dan membuat laporan pajak.""",
          badge: 'assets/icon/d4icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_640,h_424/https://www.pnp.ac.id/wp-content/uploads/2018/05/akuntansi-d3.jpg',
          fasilitas: [
            "Labor Komputer Akuntansi",
            "Labor Praktek Akuntansi",
            "Labor Praktek Kerja Anggaran dan Manufaktur",
            "Labor Praktek Akuntansi Pemeriksaan",
            "Labor Anggaran",
            "Labor Sistem Informasi Akuntansi",
            "Labor Anggaran Bank Mini"
          ]),
      Prodi(
          namaProdi: "S2 Terapan Sistem Informasi Akuntansi",
          deskripsi:
          """Menciptakan lulusan yang mampu dan terampil dalam bidang seperti: Asistant Accounting, Financial Computer System, Internal Auditor, Asistant Auditor, Asistant Analisis System, menghitung dan membuat laporan pajak.""",
          badge: 'assets/icon/s2icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_640,h_424/https://www.pnp.ac.id/wp-content/uploads/2018/05/akuntansi-d3.jpg',
          fasilitas: [
            "Labor Komputer Akuntansi",
            "Labor Praktek Akuntansi",
            "Labor Praktek Kerja Anggaran dan Manufaktur",
            "Labor Praktek Akuntansi Pemeriksaan",
            "Labor Anggaran",
            "Labor Sistem Informasi Akuntansi",
            "Labor Anggaran Bank Mini"
          ]),
    ],
  ),
  Jurusan(
    nama: "Teknologi Informasi",
    imageUrl:
        "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/prodi-manajemen-informatika.jpg",
    deskripsi:
        """Menghasilkan tenaga professional tingkat ahli madya di bidang Teknologi Informasi, khususnya pengelolaan informasi berbasis komputer sehingga mampu bekerja di berbagai instansi, perkantoran organisasi dan bisnis modern.""",
    prodi: [
      Prodi(
          namaProdi: "D3 Teknik Komputer",
          deskripsi:
              """Memiliki kemampuan membangun jaringan komputer internet dan intranet. Mampu memilih model dan infra struktur jaringan untuk berbagai keperluan yang berbeda. Mampu melakukan perawatan, perbaikan sistem jaringan komputer. Mampu menjadi administrator dan programmer.""",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/prodi-manajemen-informatika.jpg',
          fasilitas: [
            "Lab. Komputer",
            "Lab. Jaringan (Cisco)",
            "Bengkel Komputer",
            "Lab. Basis Data",
            "Lab. Digital"
          ]),
      Prodi(
          namaProdi: "D3 Manajemen Informatika",
          deskripsi:
              """Memiliki kemampuan membuat aplikasi jaringan komputer internet dan intranet dan mengelola sistem informasi berbasis LAN (Local Area Network) dan Internet untuk berbagai organisasi perkantoran dan bisnis. Menguasai berbagai program aplikasi (programmer).""",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/prodi-manajemen-informatika.jpg',
          fasilitas: [
            "Lab. Pemrograman",
            "Lab. Komputer",
            "Lab. Jaringan (Cisco)",
            "Bengkel Komputer",
            "Lab. Basis Data",
            "Lab. Digital"
          ]),
      Prodi(
          namaProdi: "D4 Teknologi Rekayasa Perangkat Lunak",
          deskripsi:
              """Memiliki kemampuan membangun jaringan komputer internet dan intranet dan membuat aplikasi dan mengelola sistem informasi berbasis LAN (Local Area Network) dan Internet untuk berbagai organisasi perkantoran dan bisnis. Menguasai berbagai program aplikasi (programmer).""",
          badge: 'assets/icon/d4icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_530/https://www.pnp.ac.id/wp-content/uploads/2018/04/prodi-manajemen-informatika.jpg',
          fasilitas: [
            "Lab. Pemrograman",
            "Lab. Komputer",
            "Lab. Jaringan (Cisco)",
            "Bengkel Komputer",
            "Lab. Basis Data",
            "Lab. Digital"
          ]),
    ],
  ),
  Jurusan(
    nama: "Bahasa Inggris",
    imageUrl:
        "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_640,h_424/https://www.pnp.ac.id/wp-content/uploads/2018/05/akuntansi-d4.jpg",
    deskripsi:
        """Sebagai Jurusan Baru, Jurusan Bahasa Inggris memiliki Program Studi D3 Bahasa Inggris.""",
    prodi: [
      Prodi(
          namaProdi: "D3 Bahasa Inggris",
          deskripsi:
              """Menghasilkan lulusan yang memiliki kemampuan berfikir kritis, analitis dan memiliki rasa kepercayaan diri yang tinggi dan keterampilan berkomunikasi dalam bahasa Inggris dengan baik secara lisan dan tulisan untuk memenuhi kepentingan dunia usaha dan dunia industri, konsep, teknik dan keterampilan penerjemahan dari bahasa inggris ke bahasa indonesia dan sebaliknya, serta keterampilan berbahasa inggris lisan dan tulisan dalm bidang komunikasi ( MC, Host, Spokesperson, News Reader, Reporter, Journalist,etc).""",
          badge: 'assets/icon/d3icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_640,h_424/https://www.pnp.ac.id/wp-content/uploads/2018/05/akuntansi-d4.jpg',
          fasilitas: [
            "Computer and Multimedia based English",
            "Language Laboratory",
            "Computer and Multimedia based English Teaching",
            "English Club with Native Speakers",
            "Self Acces Center",
            "Library / Resources Centre",
            "Free Internet Acces (Hot Spot Areas)",
            "Studens Activity Centre"
          ]),
      Prodi(
          namaProdi: "D4 Bahasa Inggris Sebagai Komunikasi Profesional",
          deskripsi:
              """Menghasilkan lulusan yang memiliki kemampuan berfikir kritis, analitis dan memiliki rasa kepercayaan diri yang tinggi dan keterampilan berkomunikasi dalam bahasa Inggris dengan baik secara lisan dan tulisan untuk memenuhi kepentingan dunia usaha dan dunia industri, konsep, teknik dan keterampilan penerjemahan dari bahasa inggris ke bahasa indonesia dan sebaliknya, serta keterampilan berbahasa inggris lisan dan tulisan dalm bidang komunikasi ( MC, Host, Spokesperson, News Reader, Reporter, Journalist,etc).""",
          badge: 'assets/icon/d4icon.png',
          imageUrl: 'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_640,h_424/https://www.pnp.ac.id/wp-content/uploads/2018/05/akuntansi-d4.jpg',
          fasilitas: [
            "Computer and Multimedia based English",
            "Language Laboratory",
            "Computer and Multimedia based English Teaching",
            "English Club with Native Speakers",
            "Self Acces Center",
            "Library / Resources Centre",
            "Free Internet Acces (Hot Spot Areas)",
            "Studens Activity Centre"
          ]),
    ],
  ),
];
