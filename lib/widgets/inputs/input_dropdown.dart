import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/radius/border_radius.dart';
import 'package:flutter/material.dart';
class InputDropdown extends StatefulWidget {
  const InputDropdown({super.key});

  @override
  State <InputDropdown> createState() =>  InputDropdownState();
}

class  InputDropdownState extends State <InputDropdown> {
  static List<String> list = <String>['One', 'Two', 'Three', 'Four'];

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return 
    Container(
   
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary,width: 1 ),
        borderRadius: BorderRadius.circular(AppBorderRadius.mediumBorder) ,
       
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: TextStyle(color: AppColors.greyBorder),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      )
    );
  }
}
