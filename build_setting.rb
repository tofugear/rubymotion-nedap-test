BuildSetting = {
    development: {
        codesign_certificate: "iPhone Developer: April Tsang (2HEC73ZVXN)",
        provisioning_profile: "#{ENV['HOME']}/Sites/profiles/DevProfileTG.mobileprovision"
    },
    release: {
        codesign_certificate: "iPhone Distribution: Tofugear Limited (D6Z54WG4B7)",
        provisioning_profile: "#{ENV['HOME']}/Sites/profiles/ProductionProfile.mobileprovision"
    },
    staging: {
        codesign_certificate: "iPhone Distribution: Tofugear Limited",
        provisioning_profile: "#{ENV['HOME']}/Sites/profiles/Tofugear_ERP_Wildcard.mobileprovision"
    },
    identifier: 'com.tofugear.erp.nedap_framework_test',
    # xcode_path: "/Applications/Xcode.app/Contents/Developer",
}