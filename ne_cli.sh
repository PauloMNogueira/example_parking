#! /bin/bash
FEATURENAME=$1
Captalized="$(tr '[:lower:]' '[:upper:]' <<< ${FEATURENAME:0:1})${FEATURENAME:1}"
Lower=${FEATURENAME,,}
# featureCapitalized="$(tr '[:lower:]' '[:upper:]' << ${featureName:0:1})${featureName:1}"
DIR=lib/
cp .cli_structure/lib/app/bindings/example_binding.dart $DIR/app/bindings/$FEATURENAME\_binding.dart
sed -i -e 's/<<FEATURE_NAME>>/'"$Captalized"'/g' $DIR/app/bindings/$FEATURENAME\_binding.dart
cp .cli_structure/lib/app/data/model/example_model.dart $DIR/app/data/model/$FEATURENAME\_model.dart
sed -i -e 's/<__LOWER__>/'"$Lower"'/g' $DIR/app/data/model/$FEATURENAME\_model.dart
sed -i -e 's/<<FEATURE_NAME>>/'"$Captalized"'/g' $DIR/app/data/model/$FEATURENAME\_model.dart

mkdir -p $DIR/app/ui/pages/$FEATURENAME
cp .cli_structure/lib/app/ui/pages/example_page.dart $DIR/app/ui/pages/$FEATURENAME/$FEATURENAME\_page.dart
sed -i -e 's/<<FEATURE_NAME>>/'"$Captalized"'/g' $DIR/app/ui/pages/$FEATURENAME/$FEATURENAME\_page.dart
cp .cli_structure/lib/app/ui/pages/example_controller.dart $DIR/app/ui/pages/$FEATURENAME/$FEATURENAME\_controller.dart
sed -i -e 's/<<FEATURE_NAME>>/'"$Captalized"'/g' $DIR/app/ui/pages/$FEATURENAME/$FEATURENAME\_controller.dart