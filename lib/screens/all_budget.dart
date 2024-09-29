import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gexpense/const/app_color.dart';
import 'package:gexpense/widgets/custom_textField.dart';
import 'package:iconsax/iconsax.dart';

class AllBudget extends StatelessWidget {
  const AllBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: AppColors.black,
          ),
        ),
        title: Text(
          'All Budget',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          TextButton(
              onPressed: () {
                _bottomShet(context);
              },
              child: Text(
                'Add New',
                style: TextStyle(fontSize: 16, color: AppColors.primaryColor),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            BudgetsButton(
              progressColor: AppColors.greenColor,
              expensePrich: '100',
              title: 'Shopping ',
              leadingImg: Image.asset('images/image 20.png'),
            ),
            BudgetsButton(
              expensePrich: '2000',
              progressColor: AppColors.redColor,
              title: 'Food ',
              leadingImg: Image.asset('images/image 15.png'),
            ),
            BudgetsButton(
                leadingImg: Image.asset('images/image 17.png'),
                title: 'House Rent',
                progressColor: AppColors.yellow300,
                expensePrich: '200')
          ],
        ),
      ),
      bottomNavigationBar: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(20),
          height: 71,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: AppColors.black.withOpacity(0.1)),
            color: AppColors.whiteTextColor,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: _bottomTotalDataShowButton(
                      color: AppColors.indigo,
                      titel: 'Total Budget',
                      amount: '20,400'),
                ),
                Container(
                  height: double.infinity,
                  width: 1,
                  color: AppColors.black.withOpacity(0.1),
                ),
                Expanded(
                  child: _bottomTotalDataShowButton(
                      color: AppColors.black,
                      titel: 'Total Expense',
                      amount: '13,500'),
                ),
                Container(
                  height: double.infinity,
                  width: 1,
                  color: AppColors.black.withOpacity(0.1),
                ),
                Expanded(
                  child: _bottomTotalDataShowButton(
                      color: AppColors.greenColor,
                      titel: 'Remaining',
                      amount: '500'),
                )
              ],
            ),
          )),
    );
  }

  Future<dynamic> _bottomShet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 260,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: AppColors.white,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 6,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shopping budget',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Clear',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(title: 'Set Amount'),
                Spacer(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red.withOpacity(0.2),
                    child: Icon(Iconsax.trash),
                  ),
                  title: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.indigo),
                    child: Text(
                      'Update',
                      style: TextStyle(color: AppColors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Column _bottomTotalDataShowButton(
      {required String titel, required String amount, required Color color}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$titel',
          style: TextStyle(
              color: AppColors.black,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),
        Text(
          '\$$amount',
          style: TextStyle(
              color: color, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class BudgetsButton extends StatelessWidget {
  const BudgetsButton(
      {super.key,
      required this.title,
      this.leadingImg,
      required this.progressColor,
      required this.expensePrich});
  final leadingImg;
  final String title;
  final Color progressColor;
  final String expensePrich;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.black.withOpacity(0.1)),
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
            backgroundColor: Color(0xffF1F5F9),
            child: leadingImg,
          ),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '\$2500',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              LinearProgressIndicator(
                color: progressColor,
                value: 100,
                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Expense \$$expensePrich',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Remaining \$2500',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: progressColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
