import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
import 'package:rokas_work/presentation/utils/date_util.dart';

import '../../theme/app_colors.dart';

class DatePickerSection extends StatelessWidget {
  const DatePickerSection({
    super.key,
    required this.context,
    required this.selectedDateTimeRange,
    required this.onSelected,
    this.title,
  });
  final BuildContext context;
  final void Function(DateTimeRange) onSelected;
  final DateTimeRange selectedDateTimeRange;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return _section(
        title: 'DateTime Range',
        content: SizedBox(
            height: 40,
            child: Row(children: [
              _calendarButton(
                text: selectedDateTimeRange.start.onlyDate(),
                onPressed: () => onShowDatePicker(
                  minDateTime: DateTime.parse('1970-01-01'),
                  maxDateTime: selectedDateTimeRange.end,
                  initialDate: selectedDateTimeRange.start,
                  onSelected: (value) {
                    var newTimeRange = DateTimeRange(
                        start: value, end: selectedDateTimeRange.end);

                    onSelected(newTimeRange);
                  },
                ),
              ),
              const Spacer(),
              Container(
                color: AppColors.primaryColor,
                child: const SizedBox(
                  width: 15,
                  child: Text(
                    '~',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              _calendarButton(
                text: selectedDateTimeRange.end.onlyDate(),
                onPressed: () {
                  onShowDatePicker(
                    maxDateTime: DateTime.now(),
                    initialDate: selectedDateTimeRange.end,
                    onSelected: (value) {
                      var newTimeRange = DateTimeRange(
                          start: selectedDateTimeRange.start,
                          end: value.toDateTimeEnd());
                      onSelected(newTimeRange);
                    },
                  );
                },
              )
            ])));
  }

  Widget _section({
    required String title,
    required Widget content,
  }) {
    return Column(children: [
      Row(children: [
        Text(title,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            )),
      ]),
      const SizedBox(
        height: 8,
      ),
      content,
    ]);
  }

  void onShowDatePicker({
    DateTime? minDateTime,
    required DateTime maxDateTime,
    required DateTime initialDate,
    required void Function(DateTime value) onSelected,
  }) async {
    _customPicker(
      minDateTime: minDateTime,
      maxDateTime: maxDateTime,
      initialDate: initialDate,
      onSelected: onSelected,
    );
  }

  void _customPicker({
    DateTime? minDateTime,
    required DateTime maxDateTime,
    required DateTime initialDate,
    required void Function(DateTime value) onSelected,
  }) {
    DatePicker.showDatePicker(
      context,
      minDateTime: minDateTime,
      maxDateTime: maxDateTime,
      initialDateTime: initialDate,
      pickerMode: DateTimePickerMode.date,
      pickerTheme: const DateTimePickerTheme(
        backgroundColor: AppColors.primaryColor,
        confirm: Text(
          'Confirm',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.white,
          ),
        ),
        cancel: Text(
          'Cancel',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.white,
          ),
        ),
        itemTextStyle: TextStyle(
          fontSize: 16,
          color: AppColors.white,
        ),
        titleHeight: 48,
        itemHeight: 48,
        pickerHeight: 48 * 6,
      ),
      onConfirm: (datetime, selectedIndex) => onSelected(datetime),
    );
  }

  Widget _calendarButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      OutlinedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 9,
              )),
              fixedSize: MaterialStateProperty.all(
                  Size((MediaQuery.of(context).size.width - 64) / 2, 40)),
              side: MaterialStateProperty.all(const BorderSide(
                color: AppColors.white,
              ))),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              const Row(children: [
                Icon(
                  Icons.access_time,
                  color: AppColors.white,
                ),
              ]),
            ],
          ));
}
