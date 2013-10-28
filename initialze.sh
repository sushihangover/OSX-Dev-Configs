brew update
brew upgrade hub
brew upgrade mariadb

# Setup GAC
pushd mysql-connector-net-6
sudo gacutil -i MySql.Data.dll
popd

N
:wqme: MySql.Data
Description: Provides Connectivity to MySql Databases
Version: 6.2.3.0
Libs: -r:/usr/lib/mono/gac/MySql.Data/6.2.3.0__c5687fc88969c44d/MySql.Data.dll


