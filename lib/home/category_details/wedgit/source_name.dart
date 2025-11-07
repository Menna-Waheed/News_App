import 'package:flutter/material.dart';
import 'package:news_git_hub/model/SourceResponse.dart';

class SourceName extends StatelessWidget {
   SourceName({super.key,required this.sources,required this.isSelected});
 Sources sources;
 bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Text(sources.name??'',
      style:isSelected?
      Theme.of(context).textTheme.labelLarge
          :
      Theme.of(context).textTheme.labelMedium,);
  }
}
