import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchComponent extends StatefulWidget {
  const SearchComponent({super.key});

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {

  final focusTextField = FocusNode();
  bool showIconBack = false;
  String searchText = "";

  @override
  void initState() {
    focusTextField.addListener(() {
      setState(() => showIconBack = focusTextField.hasFocus);
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: showIconBack ? 30 : 0,
              margin: EdgeInsets.only(right: showIconBack ? 10 : 0),
              child: SingleChildScrollView(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                child: GestureDetector(
                  onTap: () => focusTextField.unfocus(),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Expanded(
              child: Container(
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  focusNode: focusTextField,
                  onChanged: (value) => setState(() => searchText = value.trim()),
                  style: const TextStyle(
                    fontFamily: ConstsUtils.fontRegular,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Buscar",
                    hintStyle: TextStyle(color: ConstsUtils.colorCinza06),
                    contentPadding: EdgeInsets.only(top: 9, left: 10),
                    suffixIcon: Icon(
                      CupertinoIcons.search,
                      color: ConstsUtils.colorPrimary,
                    )
                  ),
                ),
              ),
            ),

            AnimatedContainer(
              duration: const Duration(milliseconds: 50),
              width: searchText.isNotEmpty ? 40 : 0,
              margin: EdgeInsets.only(left: searchText.isNotEmpty ? 10 : 0),
              child: const SingleChildScrollView(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                child: Text(
                  "Filtros",
                  style: TextStyle(
                    fontFamily: ConstsUtils.fontRegular,
                    color: Colors.white
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
