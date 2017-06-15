class PagesDisplay < GenericBasePage

  element(:testing) { |b| b.link(:href => 'testing.html')}
  element(:devops) { |b| b.link(:href => 'devops.html')}
  element(:software) { |b| b.link(:href => 'development.html')}


  def testing_page
    testing.when_persent.click

  end

  def devops_page
    devops.when_present.click
  end

  def software_page
    software.when_present.click
  end

  def verification_page
    puts "Welcome To: #{@browser.title}"
  end

end