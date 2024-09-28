import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gexpense/const/app_color.dart';
import 'package:iconsax/iconsax.dart';

class AllCategoryScreen extends StatefulWidget {
  const AllCategoryScreen({super.key});

  @override
  State<AllCategoryScreen> createState() => _AllCategoryScreenState();
}

class _AllCategoryScreenState extends State<AllCategoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        useMaterial3: false, // Ensure Material 3 is disabled, using Material 2
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: AppColors.black,
            ),
          ),
          title: Text(
            'All category',
            style: TextStyle(
                // fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xffF1F5F9),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.primaryColor,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorPadding: EdgeInsets.zero,
                  tabs: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Expense',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Income',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        // Container(
                        //   decoration: BoxDecoration(
                        //       border: Border.all(
                        //         color: Colors.black.withOpacity(0.3),
                        //       ),
                        //       borderRadius: BorderRadius.circular(10),),
                        //   child: ListTile(
                        //     leading: Container(
                        //       decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(50),
                        //           color: Colors.green.withOpacity(0.1)),
                        //       height: 48,
                        //       width: 48,
                        //       child: Icon(Icons.shopping_bag),
                        //     ),
                        //   ),
                        // ),
                        CatargoryButton(
                            icon: Iconsax.shopping_cart,
                            iconColor: AppColors.yellow300,
                            title: 'Salary',
                            bgColor: AppColors.yellow300),
                        CatargoryButton(
                            icon: Iconsax.reserve,
                            iconColor: AppColors.greenColor,
                            title: 'Car sell',
                            bgColor: AppColors.greenColor),
                        CatargoryButton(
                            icon: Iconsax.bus,
                            iconColor: AppColors.indigo,
                            title: 'Gift',
                            bgColor: AppColors.indigo),
                      ],
                    ),
                    Center(child: Text('Content for Tab 2')),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(20),
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.indigo),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            'Add New',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class CatargoryButton extends StatelessWidget {
  const CatargoryButton(
      {super.key,
      required this.icon,
      required this.iconColor,
      required this.title,
      required this.bgColor});
  final IconData icon;
  final Color iconColor;
  final String title;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: bgColor.withOpacity(0.1),
            child: Icon(icon, color: iconColor),
          ),
          title: Text(title),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
