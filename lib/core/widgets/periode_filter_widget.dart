import 'package:flutter/material.dart';

class PeriodFilterBottomSheet extends StatefulWidget {
  final String selectedPeriod;
  final Function(String) onPeriodSelected;

  const PeriodFilterBottomSheet({
    super.key,
    required this.selectedPeriod,
    required this.onPeriodSelected,
  });

  @override
  State<PeriodFilterBottomSheet> createState() =>
      _PeriodFilterBottomSheetState();
}

class _PeriodFilterBottomSheetState extends State<PeriodFilterBottomSheet> {
  late String selectedPeriod;

  @override
  void initState() {
    super.initState();
    selectedPeriod = widget.selectedPeriod;
  }

  void _selectPeriod(String period) {
    setState(() {
      selectedPeriod = period;
    });
  }

  void _applyFilter() {
    widget.onPeriodSelected(selectedPeriod);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Periode',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                IconButton(
                  icon: const Icon(Icons.close, size: 20),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: 8),
            _PeriodOption(
              title: 'All Time',
              isSelected: selectedPeriod == 'All Time',
              onTap: () => _selectPeriod('All Time'),
            ),
            _PeriodOption(
              title: 'Januari - Maret 2024',
              subtitle: 'Current Season',
              isSelected: selectedPeriod == 'Januari - Maret 2024',
              onTap: () => _selectPeriod('Januari - Maret 2024'),
            ),
            _PeriodOption(
              title: 'Oktober - Desember 2023',
              isSelected: selectedPeriod == 'Oktober - Desember 2023',
              onTap: () => _selectPeriod('Oktober - Desember 2023'),
            ),
            _PeriodOption(
              title: 'Juli - Agustus 2023',
              isSelected: selectedPeriod == 'Juli - Agustus 2023',
              onTap: () => _selectPeriod('Juli - Agustus 2023'),
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _applyFilter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF7A5AF8),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Terapkan',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class _PeriodOption extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool isSelected;
  final VoidCallback onTap;

  const _PeriodOption({
    required this.title,
    this.subtitle,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      subtitle!,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF52575C),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            Radio<bool>(
              value: true,
              groupValue: isSelected ? true : false,
              onChanged: (_) => onTap(),
              activeColor: const Color(0xFF7A5AF8),
            ),
          ],
        ),
      ),
    );
  }
}
