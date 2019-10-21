#!/bin/bash

VersionString=`grep -E 's.version.*=' WZPAlertController_Category.podspec`
VersionNumber=`tr -cd 0-9 <<<"$VersionString"`

NewVersionNumber=$(($VersionNumber + 1))
LineNumber=`grep -nE 's.version.*=' WZPAlertController_Category.podspec | cut -d : -f1`
sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" WZPAlertController_Category.podspec

echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"

git add .
git commit -am '添加注释、代码规范'#${NewVersionNumber}
git tag ${NewVersionNumber}
git push origin master --tags
pod repo push WZPRepoSpecs WZPAlertController_Category.podspec --verbose --allow-warnings --use-libraries --use-modular-headers

