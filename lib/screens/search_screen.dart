import 'package:flutter/material.dart';
import 'package:flutter_application_2_kolom_row/data/wisata_data.dart';
import 'package:flutter_application_2_kolom_row/models/wisata_model.dart';
import 'package:flutter_application_2_kolom_row/screens/detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _txtSearch = TextEditingController();
  List<WisataModel> _filteredWisataList = [];

  // ketika screen diinisialisasi/dibuka
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _txtSearch.addListener(_filterWisataProses);
  }

  // ketika screen ditutup 
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _txtSearch.removeListener(_filterWisataProses);
    _txtSearch.dispose();
  }

  void _filterWisataProses(){
    String query = _txtSearch.text.toLowerCase();
    setState(() {
      if(query.isEmpty){
        _filteredWisataList = [];
      } 
      else {
        _filteredWisataList = wisataList.where((wisataModel) {
          return wisataModel.nama.toLowerCase().contains(query);
          }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search")
      ),
      body: Column(
        children: [
          //search box
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:  Colors.deepOrange.shade100,
              ),
              child: TextField(
                controller: _txtSearch,
                autofocus: false,
                decoration: const InputDecoration(
                  hintText: "Cari Tempat Wisata",
                  prefixIcon: Icon( Icons.search),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12))
                ),
              ),
            ),

            // hasil pencarian
            Expanded(
              child: ListView.builder(
                itemCount: _filteredWisataList.length,
                itemBuilder: (context, index) {
                  WisataModel wisataModel = _filteredWisataList[index];
                  return ListTile(
                    title: Text(wisataModel.nama),
                    subtitle: Text(wisataModel.alamat),
                    leading: Image.asset(
                      wisataModel.gambarUtama,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailScreen(wisataModel: wisataModel);
                          }
                        ),
                      );
                    },
                  );
                },
              ),
            ),
        ],
      ),

      
      );
  }
}
