import 'package:flutter/material.dart';
import '../models/course.dart';

class RuangPraktikum extends StatelessWidget {
  const RuangPraktikum({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = Course.getSampleCourses();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isTablet = constraints.maxWidth >= 700;

            // Padding menyesuaikan ukuran layar
            final horizontalPadding =
                constraints.maxWidth < 400 ? 16.0 : 24.0;

            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ruang Praktikum Hari Ini',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.5,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Badge informasi
                  Wrap(
                    spacing: 10,
                    runSpacing: 8,
                    children: [
                      _buildInfoBadge(
                        icon: Icons.calendar_month,
                        text: '${courses.length} sesi',
                        color: Colors.blue,
                      ),

                      _buildInfoBadge(
                        icon: Icons.door_front_door,
                        text: '1 Ruang Tersedia',
                        color: Colors.green,
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Daftar ruang praktikum
                  Expanded(
                    child: isTablet
                        ? GridView.builder(
                            padding: const EdgeInsets.only(bottom: 16),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,

                              // Tinggi kartu
                              mainAxisExtent: 270,
                            ),
                            itemCount: courses.length,
                            itemBuilder: (context, index) {
                              return _buildCourseCard(
                                courses[index],
                                index,
                              );
                            },
                          )
                        : ListView.separated(
                            padding: const EdgeInsets.only(bottom: 16),
                            itemCount: courses.length,
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: 16);
                            },
                            itemBuilder: (context, index) {
                              return _buildCourseCard(
                                courses[index],
                                index,
                              );
                            },
                          ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildInfoBadge({
    required IconData icon,
    required String text,
    required MaterialColor color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: color.shade50,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 18,
            color: color.shade700,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: color.shade700,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard(
    Course course,
    int index,
  ) {
    final status = _getStatus(index);
    final statusColor = _getStatusColor(status);
    final statusIcon = _getStatusIcon(status);
    final statusMessage = _getStatusMessage(status);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Nama mata kuliah dan status
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  course.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(width: 8),

              _buildStatusBadge(
                status,
                statusColor,
              ),
            ],
          ),

          const SizedBox(height: 6),

          // Kode mata kuliah
          Text(
            course.code,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 13,
            ),
          ),

          const SizedBox(height: 16),

          // Waktu
          Row(
            children: [
              Icon(
                Icons.access_time_outlined,
                size: 18,
                color: Colors.grey.shade700,
              ),

              const SizedBox(width: 8),

              Expanded(
                child: Text(
                  course.time,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Ruangan
          Row(
            children: [
              Icon(
                Icons.door_front_door_outlined,
                size: 18,
                color: Colors.grey.shade700,
              ),

              const SizedBox(width: 8),

              Expanded(
                child: Text(
                  course.room,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Keterangan status
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: statusColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(
                  statusIcon,
                  color: statusColor,
                  size: 24,
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Text(
                    statusMessage,
                    style: TextStyle(
                      color: statusColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(
    String status,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        status,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  String _getStatus(int index) {
    if (index < 4) {
      return 'Berlangsung';
    }

    if (index < 8) {
      return 'Akan Datang';
    }

    return 'Selesai';
  }

  Color _getStatusColor(String status) {
    if (status == 'Berlangsung') {
      return const Color(0xFF0284C7);
    }

    if (status == 'Akan Datang') {
      return const Color(0xFFF59E0B);
    }

    return const Color(0xFF64748B);
  }

  IconData _getStatusIcon(String status) {
    if (status == 'Berlangsung') {
      return Icons.people_alt;
    }

    if (status == 'Akan Datang') {
      return Icons.access_time_filled;
    }

    return Icons.check_circle;
  }

  String _getStatusMessage(String status) {
    if (status == 'Berlangsung') {
      return 'Sedang digunakan\noleh praktikum';
    }

    if (status == 'Akan Datang') {
      return 'Sesi akan dimulai\nsebentar lagi';
    }

    return 'Sesi telah selesai';
  }
}