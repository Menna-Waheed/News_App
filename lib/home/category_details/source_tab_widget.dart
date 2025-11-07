import 'package:flutter/material.dart';
import 'package:news_git_hub/core/app_color.dart';
import 'package:news_git_hub/home/category_details/wedgit/source_name.dart';
import 'package:news_git_hub/model/SourceResponse.dart';

class SourceTabWidget extends StatefulWidget {
   SourceTabWidget({super.key,required this.sourceList});
  List<Sources>sourceList;

  @override
  State<SourceTabWidget> createState() => _SourceTabWidgetState();
}

class _SourceTabWidgetState extends State<SourceTabWidget> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sourceList.length,
        child: Column(
          children: [
            TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              dividerColor: AppColor.transperantColor,
              indicatorColor: Theme.of(context).canvasColor,
              onTap: (index) {
                currentIndex=index;
                setState(() {

                });

              },
              tabs: widget.sourceList.map((source) {
                return SourceName(
                    sources: source,
                    isSelected: currentIndex==widget.sourceList.indexOf(source)
                );


              },).toList(),
            ),
          ],
        )
    );
  }
}
