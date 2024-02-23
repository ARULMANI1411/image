import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
class sharefile extends StatefulWidget {
  const sharefile({super.key});

  @override
  State<sharefile> createState() => _sharefileState();
}

class _sharefileState extends State<sharefile> {
  final number='1234567890';


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Center(child: Column(
        children: [
          ElevatedButton(onPressed: () async{
            await  Share.share("hai");
          }, child: Text("share")),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: () async{
            await  Share.share("https://www.youtube.com/watch?v=unQlCp-lL6I");
          }, child: Text("share video link ")),

          SizedBox(height: 10,),
          ElevatedButton(onPressed: () async{
            final file=await FilePicker.platform.pickFiles(type: FileType.image);
            if(file!=null){
              final filepath =file.files.first;
              await Share.shareXFiles([XFile(filepath.path.toString())]);

            }

          }, child: Text("share in image ")),

          ElevatedButton(
            onPressed: () async  {
              final Uri url=Uri(
                scheme: 'tel',
                path: number,
              );
              if(await canLaunchUrl(url)) {
                await launchUrl(url);
              }else{
                print('cannot launch the url');
              }
            },
            child: Text("Call"),
          ),
        ],
      )),
    );
  }
}
