import 'package:corelab_app_challenge/src/controllers/produc_controller/produc_controller.dart';
import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SearchComponent extends StatefulWidget {
  const SearchComponent({super.key});

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {

  final focusTextField = FocusNode();
  bool showIconBack = false;
  String searchText = "";

  final productController = GetIt.I.get<ProductController>();

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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              width: showIconBack ? 30 : 0,
              margin: EdgeInsets.only(right: showIconBack ? 10 : 0),
              child: SingleChildScrollView(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                child: GestureDetector(
                  onTap: ()  {
                    focusTextField.unfocus();
                    productController.cleanProductsFound();
                    setState(() => searchText = "");
                  },
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
                  controller: productController.txtSearch,
                  focusNode: focusTextField,
                  onChanged: (value) => setState(() => searchText = value.trim()),
                  onSubmitted: (value) => productController.search(),
                  style: const TextStyle(
                    fontFamily: ConstsUtils.fontRegular,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Buscar",
                    hintStyle: const TextStyle(color: ConstsUtils.colorCinza06),
                    contentPadding: const EdgeInsets.only(top: 9, left: 10),
                    suffixIcon: GestureDetector(
                      onTap: searchText.isNotEmpty ? () {
                        productController.cleanProductsFound();
                        setState(() => searchText = "");
                      } : null,
                      child: Icon(
                        searchText.isNotEmpty ? Icons.close : CupertinoIcons.search,
                        color: ConstsUtils.colorPrimary,
                      ),
                    )
                  ),
                ),
              ),
            ),

            AnimatedContainer(
              duration: const Duration(milliseconds: 50),
              width: searchText.isNotEmpty ? 45 : 0,
              height: 44,
              margin: EdgeInsets.only(left: searchText.isNotEmpty ? 10 : 0),
              padding: const EdgeInsets.only(top: 12),
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
