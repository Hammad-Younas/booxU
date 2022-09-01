import 'dart:io';

import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:booxu/ProfileScreens/EditCompanyProfile.dart';
import 'package:booxu/StaffAndCompany/Staff.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Constants/CustomColor.dart';
import '../CustomerProfile/CustomerProfile.dart';

class CompanyProfilePage extends StatefulWidget {
  const CompanyProfilePage({Key? key}) : super(key: key);

  @override
  State<CompanyProfilePage> createState() => _CompanyProfilePageState();
}

class _CompanyProfilePageState extends State<CompanyProfilePage> {
  File? _image;
  Future getimage(ImageSource source) async {
    final image = await ImagePicker.platform.getImage(source: source);
    if (image == null) return;

    final imageTemporary = File(image.path);
    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: FixAppBar(
            leddingicon: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
            ),
            PageName: 'Profile',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 140,
                width: 130,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: CustomColors.Primary, width: 2),
                          ),
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(80),
                              child: _image != null
                                  ? Image.file(
                                      _image!,
                                      height: 120,
                                      width: 120,
                                      fit: BoxFit.cover,
                                    )
                                  : Image.asset(
                                      "assets/images/beauty/beauty.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: PopupMenuButton(
                        position: PopupMenuPosition.under,
                        itemBuilder: (Context) {
                          return [
                            PopupMenuItem(
                              child: TextButton(
                                onPressed: () => getimage(ImageSource.gallery),
                                child: Text("Choose from gallery"),
                              ),
                            ),
                            PopupMenuItem(
                              child: TextButton(
                                onPressed: () => getimage(ImageSource.camera),
                                child: Text("Camera"),
                              ),
                            ),
                            PopupMenuItem(
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _image = null;
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text("Remove"),
                              ),
                            ),
                          ];
                        },
                        icon: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: CustomColors.Primary,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 10,
                ),
                child: Text(
                  "Shahid Company",
                  style: TextStyle(
                    fontSize: 35,
                    color: CustomColors.Secondary2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditCompanyProfile(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 5,
                        color: CustomColors.Primary,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: Icon(
                          MdiIcons.accountCircleOutline,
                          size: 26,
                        ),
                      ),
                      Text(
                        "Edit Profile Info",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerProfile(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 5,
                        color: CustomColors.Primary,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: Icon(
                          MdiIcons.eyeOutline,
                          size: 26,
                        ),
                      ),
                      Text(
                        "Public Profile",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StaffScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 5,
                        color: CustomColors.Primary,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 26,
                        width: 26,
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: SvgPicture.asset("assets/team.svg"),
                      ),
                      Text(
                        "Staff",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 5,
                        color: CustomColors.Primary,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 26,
                        width: 26,
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: SvgPicture.asset("assets/logout.svg"),
                      ),
                      Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
