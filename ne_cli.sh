#! /bin/bash
featureName=$1
DIR=lib/
cp .cli_structure/lib/app/bindings/example_binding.dart $DIR/app/bindings/$featureName\_binding.dart
sed -i -e 's/<<FEATURE_NAME>>/'"$featureName"'/g' $DIR/app/bindings/$featureName\_binding.dart
cp .cli_structure/lib/app/data/model/example_model.dart $DIR/app/data/model/$featureName\_model.dart
sed -i -e 's/<<FEATURE_NAME>>/'"$featureName"'/g' $DIR/app/data/model/$featureName\_model.dart
mkdir -p $DIR/app/ui/pages/$featureName
cp .cli_structure/lib/app/ui/pages/example_page.dart $DIR/app/ui/pages/$featureName/$featureName\_page.dart
sed -i -e 's/<<FEATURE_NAME>>/'"$featureName"'/g' $DIR/app/ui/pages/$featureName/$featureName\_page.dart
cp .cli_structure/lib/app/ui/pages/example_controller.dart $DIR/app/ui/pages/$featureName/$featureName\_controller.dart
sed -i -e 's/<<FEATURE_NAME>>/'"$featureName"'/g' $DIR/app/ui/pages/$featureName/$featureName\_controller.dart