# Uncomment this line to define a global platform for your project
# platform :ios, '8.0'
# Uncomment this line if you're using Swift

use_frameworks!

target ‘WatchTap’ do
	pod 'RealmSwift'
	pod 'RealmMapView'

    	pod 'Alamofire'
    	pod 'SwiftyJSON'

end

post_install do |installer|
	'rm -rf Pods/Headers'
end
