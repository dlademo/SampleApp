class PagesDisplay < GenericBasePage

  element(:testing) { |b| b.h2(:xpath => '/html/body/div[3]/div/div[1]/h2')}
  element(:devops) { |b| b.h2(:xpath => '/html/body/div[3]/div/div[2]/h2')}
  element(:software) { |b| b.h2(:xpath => '/html/body/div[3]/div/div[3]/h2')}


  def testing_page
    testing.when_present.double_click

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