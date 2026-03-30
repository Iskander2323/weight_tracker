import 'package:flutter/material.dart';
import 'package:weight_tracker/ui/extensions/date_time_extension.dart';

class SelectDateWidget extends StatefulWidget {
  const SelectDateWidget({
    super.key,
    this.defaultDay,
    this.selectedDay,
    this.title = 'Күн таңдау',
    required this.onTap,
  });
  final String? title;
  final DateTime? defaultDay;
  final DateTime? selectedDay;
  final VoidCallback onTap;

  @override
  State<SelectDateWidget> createState() => _SelectDateWidgetState();
}

class _SelectDateWidgetState extends State<SelectDateWidget> {
  Color _buildBackgroundColor(DateTime? selectedDay, DateTime? defaultDay) {
    if (selectedDay == null) return Colors.grey;

    if (defaultDay!.isSameDay(widget.selectedDay!)) {
      return Colors.greenAccent;
    } else {
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 4),
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: _buildBackgroundColor(widget.selectedDay, widget.defaultDay),
          border: Border.all(color: Colors.green, width: 3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title ?? '',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 8),
            if (widget.defaultDay != null)
              Text(
                widget.defaultDay != null
                    ? widget.defaultDay!.fullDateWithMonth
                    : 'None',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
          ],
        ),
      ),
    );
  }
}
