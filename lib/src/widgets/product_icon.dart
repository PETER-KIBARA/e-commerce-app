import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/model/category.dart';
import 'package:flutter_ecommerce_app/src/themes/light_color.dart';
import 'package:flutter_ecommerce_app/src/themes/theme.dart';
import 'package:flutter_ecommerce_app/src/widgets/title_text.dart';
import 'package:flutter_ecommerce_app/src/widgets/extentions.dart';

class ProductIcon extends StatelessWidget {
  final ValueChanged<Category> onSelected;
  final Category model;

  const ProductIcon({
    Key? key,
    required this.model,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (model.id == null) return const SizedBox(width: 5);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Container(
        padding: AppTheme.hPadding,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: model.isSelected ? LightColor.background : Colors.transparent,
          border: Border.all(
            color: model.isSelected ? LightColor.orange : LightColor.grey,
            width: model.isSelected ? 2 : 1,
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: model.isSelected ? const Color(0xfffbf2ef) : Colors.white,
              blurRadius: 10,
              spreadRadius: 5,
              offset: const Offset(5, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            if (model.image != null)
              Image.asset(model.image!, height: 30)
            else
              const SizedBox(),
            if (model.name != null)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TitleText(
                  text: model.name!,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
          ],
        ),
      ).ripple(
        () => onSelected(model),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
