#! /bin/bash
FEATURENAME=$1
Captalized="$(tr '[:lower:]' '[:upper:]' <<< ${FEATURENAME:0:1})${FEATURENAME:1}"
Lower=${FEATURENAME,,}
# featureCapitalized="$(tr '[:lower:]' '[:upper:]' << ${featureName:0:1})${featureName:1}"
DIR=lib
mkdir -p $DIR/app/features/$Captalized
cp .cli_structure/lib/app/features/feature_example/feature_example_binding.dart $DIR/app/features/$Captalized/$FEATURENAME\_binding.dart
sed -i -e 's/<<FEATURE_NAME>>/'"$Captalized"'/g' $DIR/app/features/$Captalized/$FEATURENAME\_binding.dart
cp .cli_structure/lib/app/features/feature_example/feature_example_model.dart $DIR/app/features/$Captalized/$FEATURENAME\_model.dart
sed -i -e 's/<__LOWER__>/'"$Lower"'/g' $DIR/app/features/$Captalized/$FEATURENAME\_model.dart
sed -i -e 's/<<FEATURE_NAME>>/'"$Captalized"'/g' $DIR/app/features/$Captalized/$FEATURENAME\_model.dart
cp .cli_structure/lib/app/features/feature_example/feature_example_error.dart $DIR/app/features/$Captalized/$FEATURENAME\_error.dart
cp .cli_structure/lib/app/features/feature_example/feature_example_repository.dart $DIR/app/features/$Captalized/$FEATURENAME\_repository.dart

mkdir -p $DIR/app/ui/pages/$Captalized
cp .cli_structure/lib/app/ui/pages/example_page.dart $DIR/app/ui/pages/$Captalized/$FEATURENAME\_page.dart
sed -i -e 's/<<FEATURE_NAME>>/'"$Captalized"'/g' $DIR/app/ui/pages/$Captalized/$FEATURENAME\_page.dart
cp .cli_structure/lib/app/ui/pages/example_controller.dart $DIR/app/ui/pages/$Captalized/$FEATURENAME\_controller.dart
sed -i -e 's/<<FEATURE_NAME>>/'"$Captalized"'/g' $DIR/app/ui/pages/$Captalized/$FEATURENAME\_controller.dart