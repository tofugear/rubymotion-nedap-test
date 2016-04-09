class MainController < UIViewController
  def viewDidLoad
    label = UILabel.alloc.initWithFrame([[20,50],[320, 450]])
    label.numberOfLines = 0
    self.view.addSubview(label)
    if defined?(IDRRegulationWrapper) == 'constant' && IDRRegulationWrapper.class == Class
      label.text = IDRRegulationWrapper.allRegulations.map {|reg| "#{reg.toString} #{reg.value}"}.join("\n")
    else
      label.text = "Framework not loaded"

    end
  end
end