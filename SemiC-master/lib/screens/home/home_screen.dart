import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/my_header_drawer.dart';
import 'package:plant_app/screens/features_and_services/features_and_services.dart';
import 'package:plant_app/screens/home/components/body.dart';

final controller = ScrollController();

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var currentpage = drawerSections.Home_page;

class _HomeScreenState extends State<HomeScreen> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    var container;
    final items = <Widget>[
      SvgPicture.asset(
        'assets/icons/about_us.svg',
        height: 28,
        width: 28,
      ),
      SvgPicture.asset(
        'assets/icons/services.svg',
        height: 28,
        width: 28,
      ),
      SvgPicture.asset(
        'assets/icons/home.svg',
        height: 28,
        width: 28,
      ),
      SvgPicture.asset(
        'assets/icons/our_work.svg',
        height: 28,
        width: 28,
      ),
      SvgPicture.asset(
        'assets/icons/contact_us.svg',
        height: 28,
        width: 28,
      ),

      // Icon(Icons.contacts, size: 20),
      // Icon(Icons.dashboard_outlined, size: 20),
      // Icon(Icons.home_rounded, size: 20),
      // Icon(Icons.import_contacts_outlined, size: 20),
      // Icon(Icons.people_alt_outlined, size: 20),
    ];
    // if (currentpage == drawerSections.Home_page) {
    //   container = Body();
    // } else if (currentpage == drawerSections.about_us) {
    //   // container = AboutUs();
    // } else if (currentpage == drawerSections.features_and_services) {
    //   container = FeaturesAndServices();
    // } else if (currentpage == drawerSections.our_resume) {
    //   // container = OurResume();
    // } else if (currentpage == drawerSections.contact_us) {
    //   // container = ContactUs();
    // }

    if (index == 2) {
      container = Body();
    } else if (index == 0) {
      // container = AboutUs();
    } else if (index == 1) {
      container = FeaturesAndServices();
    } else if (index == 3) {
      // container = OurResume();
    } else if (index == 4) {
      // container = ContactUs();
    }

    return Scaffold(
      //appBar: buildAppBar(),
      body: container,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          child: Icon(
            Icons.arrow_upward,
          ),
          onPressed: scrollUp),

      // (Fiverr): Scaffold itself has the Drawer option.
      //           Because you already have a Listview, the SingleChildScrollView
      //           is not needed.
      drawer: Drawer(
        child: ListView(
          children: [
            MyHeaderDrawer(),
            // (Fiverr 2.0): Handle the callback and set the State
            MyDrawerList(
              drawerSelectedCallback: (selectedSection) => setState(
                () {
                  currentpage = selectedSection;
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: kPrimaryColor,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        index: index,
        height: 50,
        items: items,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: Builder(
        builder: (context) {
          // (Fiverr): Here you called the drawer. Thats wrong, but if you want a
          //           other image, you could call "openDrawer"
          return IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        },
      ),
    );
  }

  void scrollUp() {
    final double start = 0;
    controller.animateTo(start,
        duration: Duration(milliseconds: 200), curve: Curves.easeIn);
  }
}

// (Fiverr 2.0): Change it to stateless widget becuase setState is not needed here
// (Fiverr): You should prefer Widgets instead of methods
class MyDrawerList extends StatelessWidget {
  const MyDrawerList({
    Key key,
    @required this.drawerSelectedCallback,
  }) : super(key: key);

  // (Fiverr 2.0):  Add a callback function which executes every tap on a item
  final void Function(drawerSections selectedSection) drawerSelectedCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          menuItem(1, 'الصفحة الرئيسية', Icons.home_rounded,
              currentpage == drawerSections.Home_page ? true : false, context),
          menuItem(2, 'المزيد عنا', Icons.contacts,
              currentpage == drawerSections.about_us ? true : false, context),
          menuItem(
              3,
              'خدماتنا',
              Icons.dashboard_outlined,
              currentpage == drawerSections.features_and_services
                  ? true
                  : false,
              context),
          menuItem(4, 'اعمالنا', Icons.import_contacts_outlined,
              currentpage == drawerSections.our_resume ? true : false, context),
          menuItem(5, 'تواصل معنا', Icons.people_alt_outlined,
              currentpage == drawerSections.contact_us ? true : false, context),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected,
      BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          if (id == 1) {
            // (Fiverr 2.0): here is the call of the Callback Function
            drawerSelectedCallback(drawerSections.Home_page);
          } else if (id == 2) {
            drawerSelectedCallback(drawerSections.about_us);
          } else if (id == 3) {
            drawerSelectedCallback(drawerSections.features_and_services);
          } else if (id == 4) {
            drawerSelectedCallback(drawerSections.our_resume);
          } else if (id == 5) {
            drawerSelectedCallback(drawerSections.contact_us);
          }
          Navigator.pop(context);
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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

enum drawerSections {
  Home_page,
  about_us,
  features_and_services,
  our_resume,
  contact_us
}
