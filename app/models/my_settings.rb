class MySettings < Settingslogic
  source "#{Rails.root}/config/settings/my_settings.yml"
  namespace Rails.env
end