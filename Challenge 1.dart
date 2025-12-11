const String appName = "Program Penilaian Siswa"; // const (harus fix)

final DateTime startTime = DateTime.now(); // final (set sekali, runtime)

/// Fungsi return -> mengembalikan grade (String)
String getGrade(int nilai) {
  if (nilai >= 90 && nilai <= 100) {
    return "A";
  } else if (nilai >= 80 && nilai < 90) {
    return "B";
  } else if ((nilai >= 70 && nilai < 80) || nilai == 69) { 
    // contoh OR (||)
    return "C";
  } else if (nilai >= 60 && nilai < 70) {
    return "D";
  } else {
    return "E";
  }
}

/// Fungsi void -> hanya melakukan aksi (print)
/// Menggunakan required named parameter
void printReport({required String nama, required int nilai}) {
  String grade = getGrade(nilai);

  print("----------------------------");
  print("Nama  : $nama");
  print("Nilai : $nilai");
  print("Grade : $grade");

  // contoh if - else if tambahan
  if (grade == "A") {
    print("Komentar: Sangat baik! Pertahankan!");
  } else if (grade == "B") {
    print("Komentar: Bagus, tingkatkan lagi.");
  } else if (grade == "C" || grade == "D") {
    print("Komentar: Masih perlu belajar.");
  } else {
    print("Komentar: Wajib remedial.");
  }
}

/// Fungsi tambahan -> return int
int getAverage(List<int> data) {
  var total = 0; // var
  for (var nilai in data) {
    total += nilai;
  }
  return (total / data.length).floor();
}

void main() {
  print("=== $appName ===");
  print("Mulai pada: $startTime\n");

  // var digunakan untuk bebas tipe
  var names = ["Andi", "Budi", "Cici", "Dewi", "Erik"];
  var scores = [95, 82, 69, 55, 88];

  // Loop for
  for (var i = 0; i < names.length; i++) {
    printReport(nama: names[i], nilai: scores[i]);
  }

  // fungsi return
  int rata = getAverage(scores);
  print("\nRata-rata kelas: $rata");
  print("Grade rata-rata: ${getGrade(rata)}");

  print("\nProgram selesai.");
}