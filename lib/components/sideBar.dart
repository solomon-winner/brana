import 'package:brana/main.dart';
import 'package:brana/pages/login_page.dart';
import 'package:brana/pages/profile_page.dart';
import 'package:brana/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:brana/Providers/users/user_provider.dart';

class SideBar extends ConsumerStatefulWidget {
  const SideBar({super.key});

  @override
  ConsumerState<SideBar> createState() => _SideBarState();
}

class _SideBarState extends ConsumerState<SideBar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInOutBack,
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
          color: BranaColor.light_background,
          boxShadow: [
            BoxShadow(
              color: BranaColor.ShadowColor,
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(0, 0),
            ),
          ],
          borderRadius: BorderRadius.zero),
      width: 250,
      child: Drawer(
          shadowColor: BranaColor.ShadowColor,
          backgroundColor: BranaColor.light_background,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: BranaColor.WhiteColor,
                  child: ClipOval(
                      child: Text(
                    "S",
                    style: TextStyle(
                      color: BranaColor.dark_background,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
                decoration: BoxDecoration(
                    color: BranaColor.dark_background,
                    image: DecorationImage(
                        image: AssetImage("assets/Green.PNG"),
                        fit: BoxFit.cover)),
                accountName: const Text("Solomon Yalew",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                accountEmail: Text(
                  "solomonyalew664@gmail.com",
                  style: TextStyle(
                    color: BranaColor.WhiteColor,
                    fontSize: 12,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                ),
                title: Text("Profile"),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return Profile();
                })),
              ),
              ListTile(
                leading: Icon(
                  Icons.share,
                ),
                title: Text("Share"),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return Profile();
                })),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                ),
                title: Text("Setting"),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return Profile();
                })),
              ),
              ListTile(
                leading: Icon(
                  Icons.money,
                ),
                title: Text("Purchase History"),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return Profile();
                })),
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                ),
                title: Text("Notification"),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return Profile();
                })),
              ),
              ListTile(
                leading: Icon(
                  Icons.nightlight,
                ),
                title: Text("Dark Mode"),
                onTap: () => print(this),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                ),
                title: Text("Signout"),
                onTap: () async{
                  final shouldLogout = await showDialog<bool>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Confirm Logout"),
                      content: const Text("Are you sure you want to logout?"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: const Text("Sign Out"),
                          ),
                      ]
                    )
                    );

                if (shouldLogout ?? false) {
                  try {
                    await ref.read(userNotifierProvider.notifier).logout();
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false,
                    );

                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Error logging out: ${e.toString()}"),
                      ));
                  }
                }
                },
              )
            ],
          )),
    );
  }
}
