import 'package:flutter/material.dart';
import 'package:jr_world/component/custom_text_field.dart';
import 'package:jr_world/const/colors.dart';

class ScheduleBotoomSheet extends StatefulWidget {
  const ScheduleBotoomSheet({Key? key}) : super(key: key);

  @override
  State<ScheduleBotoomSheet> createState() => _ScheduleBotoomSheetState();
}

class _ScheduleBotoomSheetState extends State<ScheduleBotoomSheet> {
  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    return Container(
        height: MediaQuery.of(context).size.height / 2 + bottomInset,
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
                    backgroundColor: PRIMARY_COLOR,
                  ),
                  child: const Text('저장'),
                ),
              )
            ],
          ),
        ));
  }

  void onSavePressed() {}
}
