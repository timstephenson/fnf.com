Refinery::Wymeditor.configure do |config|
  # Add extra tags to the wymeditor whitelist e.g. = {'tag' => {'attributes': '1': 'href'}} or just {'tag' => {}}
  config.whitelist_tags = {
    'iframe' => {
      'attributes' => {
        '1' => 'width',
        '2' => 'height',
        '3' => 'src',
        '4' => 'frameborder',
        '5' => 'allowfullscreen'
        }
      } 
    }
end