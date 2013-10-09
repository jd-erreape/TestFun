class ButtonController < UIViewController
  def viewDidLoad
    super

    self.view.addSubview(button)

    @tapped = false
  end

  private

  def button
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.setTitle('Tap Me', forState: UIControlStateNormal)
    button.sizeToFit
    button.addTarget(
      self,
      action: 'tapped',
      forControlEvents: UIControlEventTouchUpInside
    )
  end

  def tapped
    @tapped = true
    self.view.backgroundColor = UIColor.redColor
  end
end