import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEEF8),
      body: SafeArea(
        child: Column(
          children: [
            // ── HEADER ──────────────────────────────────────────────
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF4A6CF7),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // App bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(Icons.task_alt,
                                color: Colors.white, size: 18),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Task Track Lite',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.shade300,
                        ),
                        child: const Center(
                          child: Text('😸', style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'Halo!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 14),

                  // Search bar
                  Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey.shade400, size: 20),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Cari tugas...',
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 14),
                          ),
                        ),
                        Icon(Icons.mic_none_rounded,
                            color: Colors.grey.shade400, size: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Category icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildCategoryItem(
                        icon: Icons.check_box_outline_blank_rounded,
                        label: 'To Do',
                        bgColor: const Color(0xFFFFF3E0),
                        iconColor: const Color(0xFFFF9800),
                      ),
                      _buildCategoryItem(
                        icon: Icons.calendar_month_rounded,
                        label: 'Deadline',
                        bgColor: const Color(0xFFFFEBEE),
                        iconColor: const Color(0xFFE53935),
                        badge: '1',
                      ),
                      _buildCategoryItem(
                        icon: Icons.motion_photos_on_outlined,
                        label: 'Progress',
                        bgColor: const Color(0xFFE8EAF6),
                        iconColor: const Color(0xFF3F51B5),
                      ),
                      _buildCategoryItem(
                        icon: Icons.mail_outline_rounded,
                        label: 'Complete',
                        bgColor: const Color(0xFFE8F5E9),
                        iconColor: const Color(0xFF43A047),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ),

            // ── BODY ────────────────────────────────────────────────
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Kelompok Aktif
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Kelompok Aktif',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A1A2E),
                          ),
                        ),
                        Text(
                          'Lihat Semua',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.blue.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),

                    _buildGroupCard(
                      title: 'Data Mining',
                      memberCount: 8,
                      taskCount: 2,
                      taskLabel: 'Cempelo',
                      tasksDone: 2,
                      tasksTotal: 1,
                      statusLabel: 'Ketinggalan',
                      statusColor: const Color(0xFFFF6B6B),
                      statusBg: const Color(0xFFFFEEEE),
                      avatarColors: [
                        const Color(0xFF4CAF50),
                        const Color(0xFFE53935),
                        const Color(0xFF3F51B5),
                      ],
                      avatarLetters: ['S', 'R', 'D'],
                    ),
                    const SizedBox(height: 12),

                    _buildGroupCard(
                      title: 'Proyek Design',
                      memberCount: 5,
                      taskCount: 1,
                      taskLabel: 'Cemple',
                      tasksDone: null,
                      tasksTotal: null,
                      statusLabel: null,
                      statusColor: null,
                      statusBg: null,
                      avatarColors: [
                        const Color(0xFFFF9800),
                        const Color(0xFF2196F3),
                        const Color(0xFF4CAF50),
                      ],
                      avatarLetters: ['A', 'B', 'C'],
                    ),
                    const SizedBox(height: 20),

                    // Upcoming Deadline
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Upcoming Deadline',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A1A2E),
                          ),
                        ),
                        Icon(Icons.chevron_right_rounded,
                            color: Color(0xFF888888)),
                      ],
                    ),
                    const SizedBox(height: 14),

                    _buildDeadlineCard(),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // ── BOTTOM NAV ──────────────────────────────────────────────
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 16,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (i) => setState(() => _selectedIndex = i),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: const Color(0xFF4A6CF7),
          unselectedItemColor: Colors.grey.shade400,
          selectedLabelStyle:
              const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          unselectedLabelStyle: const TextStyle(fontSize: 11),
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(Icons.people_outline_rounded),
                  Positioned(
                    right: -4,
                    top: -4,
                    child: Container(
                      width: 9,
                      height: 9,
                      decoration: const BoxDecoration(
                        color: Color(0xFF4A6CF7),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              label: 'Update',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem({
    required IconData icon,
    required String label,
    required Color bgColor,
    required Color iconColor,
    String? badge,
  }) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(icon, color: iconColor, size: 26),
            ),
            if (badge != null)
              Positioned(
                right: -4,
                top: -4,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE53935),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      badge,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildGroupCard({
    required String title,
    required int memberCount,
    required int taskCount,
    required String taskLabel,
    int? tasksDone,
    int? tasksTotal,
    String? statusLabel,
    Color? statusColor,
    Color? statusBg,
    required List<Color> avatarColors,
    required List<String> avatarLetters,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1A2E),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.people_outline,
                            size: 14, color: Color(0xFF888888)),
                        const SizedBox(width: 4),
                        Text(
                          '$memberCount  •  $taskCount $taskLabel',
                          style: const TextStyle(
                              fontSize: 12, color: Color(0xFF888888)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Overlapping avatars
              SizedBox(
                width: avatarLetters.length * 22.0 + 8,
                height: 32,
                child: Stack(
                  children: List.generate(avatarLetters.length, (i) {
                    return Positioned(
                      left: i * 22.0,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: avatarColors[i],
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: Center(
                          child: Text(
                            avatarLetters[i],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color(0xFFE8F5E9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.check, size: 12, color: Color(0xFF43A047)),
                    SizedBox(width: 3),
                    Text(
                      'Complete',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF43A047),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (tasksDone != null || statusLabel != null) ...[
            const SizedBox(height: 12),
            Row(
              children: [
                if (tasksDone != null) ...[
                  const Icon(Icons.check_circle_outline,
                      size: 14, color: Color(0xFF888888)),
                  const SizedBox(width: 4),
                  Text('$tasksDone',
                      style: const TextStyle(
                          fontSize: 12, color: Color(0xFF888888))),
                  const SizedBox(width: 10),
                  const Icon(Icons.star_border_rounded,
                      size: 14, color: Color(0xFF888888)),
                  const SizedBox(width: 4),
                  Text('$tasksTotal',
                      style: const TextStyle(
                          fontSize: 12, color: Color(0xFF888888))),
                ],
                if (statusLabel != null) ...[
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: statusBg,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '• $statusLabel',
                      style: TextStyle(
                        fontSize: 11,
                        color: statusColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildDeadlineCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'AI Presentation',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1A2E),
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.people_outline,
                        size: 14, color: Color(0xFF888888)),
                    SizedBox(width: 4),
                    Text(
                      'Tgd. 16:00',
                      style:
                          TextStyle(fontSize: 12, color: Color(0xFF888888)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF43A047),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Terkini',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 52,
            height: 32,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CAF50),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const Center(
                      child: Text('S',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Positioned(
                  left: 22,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE53935),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const Center(
                      child: Text('R',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold)),
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
}