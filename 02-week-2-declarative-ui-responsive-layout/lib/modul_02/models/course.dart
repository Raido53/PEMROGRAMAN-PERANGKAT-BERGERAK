// Model data untuk mata kuliah


class Course {
  final String code;
  final String name;
  final String lecturer;
  final int sks;
  final double progress; // progres silabus (0.0 - 1.0)
  final String room;
  final String Category;
  final String time; // waktu praktikum

  const Course({
    required this.code,
    required this.name,
    required this.lecturer,
    required this.sks,
    required this.progress,
    this.room = 'Lab Komputer 3',
    required this.Category,
     required this.time,
  });

  // Data dummy untuk bahan praktikum & testing
  static List<Course> getSampleCourses() {
    return const [
      Course(
        code: 'TRPL501',
        name: 'Pemrograman Perangkat Bergerak',
        lecturer: 'Sepyan Purnama Kristanto',
        sks: 2,
        progress: 0.25,
        room: 'Lab Tuk',
        Category: 'Teori',
        time: '07.30 - 08.20'
      ),
      Course(
        code: 'TRPL501',
        name: 'Praktikum Pemrograman Perangkat Bergerak',
        lecturer: 'Sepyan Purnama Kristanto',
        sks: 2,
        progress: 0.25,
        room: 'Lab Tuk',
        Category: 'Praktikum',
        time: '08.20 - 11.40'
      ),
      Course(
        code: 'TRPL502',
        name: 'Basis Data Lanjut',
        lecturer: 'Dianni Yusuf, S.Kom., M.Kom.',
        sks: 2,
        progress: 0.40,
        room: 'Lab. TUK',
        Category: 'Teori',
        time: '07.30 - 11.40'
      ),
      Course(
        code: 'TRPL502',
        name: 'Basis Data Lanjut Lanjut',
        lecturer: 'Dianni Yusuf, S.Kom., M.Kom.',
        sks: 2,
        progress: 0.40,
        room: 'Lab. TUK',
        Category: 'Praktikum',
        time: '07.30 - 11.40'
      ),
      Course(
        code: 'TRPL503',
        name: 'Statistika',
        lecturer: 'Siska Aprilia Hardiyanti, S.Pd., M.Si',
        sks: 2,
        progress: 0.60,
        room: 'G2.01',
        Category: 'Teori',
        time: '09.10 - 10.50'
      ),
      Course(
        code: 'TRPL504',
        name: 'Interoperabilitas',
        lecturer: 'Furiansyah Dipraja, S.T., M.Kom.',
        sks: 2,
        progress: 0.15,
        room: 'G2.01',
        Category: 'Teori',
        time: '07.30 - 11.40'
      ),
      Course(
        code: 'TRPL504',
        name: 'Praktikum Interoperabilitas',
        lecturer: 'Furiansyah Dipraja, S.T., M.Kom.',
        sks: 2,
        progress: 0.15,
        room: 'G2.01',
        Category: 'Praktikum',
        time: '07.30 - 11.40'
      ),
      Course(
        code: 'TRPL504',
        name: 'Metode dan Model Pengembangan Perangkat Lunak',
        lecturer: 'Ruth Ema Febrita, S.Pd., M.Kom.',
        sks: 2,
        progress: 0.15,
        room: 'G2.01',
        Category: 'Teori',
        time: '07.30 - 11.40'
      ),
      Course(
        code: 'TRPL504',
        name: 'Rekayasa Kebutuhan Perangkat Lunak',
        lecturer: 'Eka Mistiko Rini, S.Kom, M.Kom.',
        sks: 2,
        progress: 0.15,
        room: 'G2.01',
        Category: 'Teori',
        time: '07.30 - 11.40'
      ),
      Course(
        code: 'TRPL504',
        name: 'Pancasila',
        lecturer: 'Ninik Sri Rahayu, S.H., M.H.',
        sks: 2,
        progress: 0.15,
        room: 'G2.01',
        Category: 'Teori',
        time: '07.30 - 11.40'
      ),
      Course(
        code: 'TRPL504',
        name: 'Pemrograman Web Lanjut',
        lecturer: 'Devit Suwardiyanto,S.Si., M.T.',
        sks: 2,
        progress: 0.15,
        room: 'G2.01',
        Category: 'Teori',
        time: '12.30 - 13.20'
      ),
      Course(
        code: 'TRPL504',
        name: 'Praktikum Pemrograman Web Lanjut',
        lecturer: 'Devit Suwardiyanto,S.Si., M.T.',
        sks: 2,
        progress: 0.15,
        room: 'G2.01',
        Category: 'Praktikum',
        time: '13.20 - 16.20'
      ),
    ];
  }
}
