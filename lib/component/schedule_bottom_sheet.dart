import 'package:flutter/material.dart';
import 'package:jr_world/component/custom_text_field.dart';
import 'package:jr_world/const/colors.dart';

class ScheduleBottomSheet extends StatefulWidget {
  const ScheduleBottomSheet({Key? key}) : super(key: key);

  @override
  State<ScheduleBottomSheet> createState() => _ScheduleBottomSheetState();
}

class _ScheduleBottomSheetState extends State<ScheduleBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final bottomInset =
        MediaQuery.of(context).viewInsets.bottom; // 하단 키보드 올라오는 만큼 높이 설정
    return Container(
        height: MediaQuery.of(context).size.height / 2 +
            bottomInset, // 키보드 유무에 따라 높이가 변함
        color: Colors.white,
        child: Padding(
          padding:
              EdgeInsets.only(left: 8, right: 8, top: 8, bottom: bottomInset),
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      label: '시작 시간',
                      isTime: true,
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: CustomTextField(
                      label: '종료 시간',
                      isTime: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Expanded(
                child: CustomTextField(
                  label: '내용',
                  isTime: false,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onSavePressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary_color,
                  ),
                  child: const Text(
                    '저장',
                    style: TextStyle(
                        color: on_primary_color, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  void onSavePressed() {}
}
