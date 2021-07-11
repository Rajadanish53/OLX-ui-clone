import "package:flutter/material.dart";

class SearchBar extends PreferredSize {
 
@override
Size get preferredSize => Size.fromHeight(42.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(

        cursorColor: Colors.black,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search,color: Colors.black,),
          hintText:"Find Cars,Mobile Phones and more...",
            contentPadding: EdgeInsets.only(left: 10.0),
            focusedBorder: OutlineInputBorder(
                gapPadding: 40.0, borderSide: BorderSide(color: Colors.black,width: 3.0)),
            border: OutlineInputBorder(
                gapPadding: 40.0, borderSide: BorderSide(color: Colors.black,width: 3.0))),
      ),
    ); // Your custom widget implementation.
  }
}
