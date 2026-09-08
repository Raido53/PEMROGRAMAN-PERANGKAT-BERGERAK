// Model data untuk mata kuliah
class Course {
  final String code;
  final String name;
  final String lecturer;
  final int sks;
  final double progress; // progres silabus (0.0 - 1.0)
  final String room;

  const Course({
    required this.code,
    required this.name,
    required this.lecturer,
    required this.sks,
    required this.progress,
    this.room = 'Lab Komputer 3',
  });

  // Data dummy untuk bahan praktikum & testing
  static List<Course> getSampleCourses() {
    return const [
      Course(
        code: 'TRPL501',
        name: 'Pemrograman Perangkat Bergerak',
        lecturer: 'Sepyan Purnama Kristanto',
        sks: 4,
        progress: 0.25,
        room: 'Lab Tuk',
      ),
      Course(
        code: 'TRPL502',
        name: 'Basis Data Lanjut',
        lecturer: 'Dianni Yusuf, S.Kom., M.Kom.',
        sks: 3,
        progress: 0.40,
        room: 'Lab. TUK',
      ),
      Course(
        code: 'TRPL503',
        name: 'Statistika',
        lecturer: 'Siska Aprilia Hardiyanti, S.Pd., M.Si',
        sks: 3,
        progress: 0.60,
        room: 'G2.01',
      ),
      Course(
        code: 'TRPL504',
        name: 'Metode dan Model Pengembangan Perangkat Lunak',
        lecturer: 'Ruth Ema Febrita, S.Pd., M.Kom.',
        sks: 2,
        progress: 0.15,
        room: 'G2.01',
      ),
    ];
  }
}
