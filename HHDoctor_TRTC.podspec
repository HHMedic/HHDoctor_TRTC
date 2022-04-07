Pod::Spec.new do |s|
    s.name         = "HHDoctor_TRTC"

    s.version      = "3.4.0.03221146"
    s.summary      = "和缓视频医生 SDK"

    s.description  = <<-DESC
    和缓视频医生，连接千万用户和全科医生。
    DESC

    s.homepage     = "https://code.hh-medic.com/dev-client/hhsdk.ios"
    s.license      = "MIT"
    s.author             = { "hh" => "hh_client@hh-medic.com" }
    s.social_media_url   = "https://github.com"

    s.platform     = :ios, "9.0"
    s.source       = { :git => "https://code.hh-medic.com/hh_public/hhvDoctorSDK.ios.git", :tag => '3.4.0.03221146' }
    s.default_subspec = 'Base'

    s.dependency 'TXIMSDK_iOS'

    s.subspec 'HHDoctor' do |HHDoctor|
        base.vendored_frameworks = 'HHVDoctorSDK/*.framework'
        base.resources = 'HHVDoctorSDK/resources/*.bundle'

        base.frameworks = ['AVFoundation', 'Accelerate']
        base.library = 'c++', 'resolv'
    end

end


