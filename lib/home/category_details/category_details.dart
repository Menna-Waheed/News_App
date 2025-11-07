import 'package:flutter/material.dart';
import 'package:news_git_hub/api/api_managment.dart';
import 'package:news_git_hub/core/app_color.dart';
import 'package:news_git_hub/core/app_style.dart';
import 'package:news_git_hub/home/category_details/source_tab_widget.dart';
import 'package:news_git_hub/l10n/app_localizations.dart';
import 'package:news_git_hub/model/SourceResponse.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({super.key});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
      future: ApiManagment.getSource(),
      builder: (context, snapshot) {
        //loading
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(
              color: AppColor.grayColor,
            ),
          );
        }
        //error client
       else if(snapshot.hasError){
          return Padding(
            padding: const EdgeInsets.all(8.0),

            child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                 Text(AppLocalizations.of(context)!.some_thing_went_wrong,textAlign: TextAlign.center,),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.grayColor
                    ),
                    onPressed: (){
                      ApiManagment.getSource();
                      setState(() {

                      });
                    },
                    child:Text(
                      AppLocalizations.of(context)!.try_again,style: Theme.of(context).textTheme.labelMedium,))
              ],
            ),
          );
        }
        //server => response  success or error
        if(snapshot.data?.status=='error'){
          return Column(
            children: [
              Text(snapshot.data!.message!),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.grayColor
                  ),
                  onPressed: (){
                    ApiManagment.getSource();
                    setState(() {

                    });
                  },
                  child:
                  Text(AppLocalizations.of(context)!.try_again,style: Theme.of(context).textTheme.labelMedium,))
            ],
          );

        }
        var sourceList=snapshot.data?.sources??[];
        return SourceTabWidget(sourceList: sourceList);
      },
    );
  }
}
