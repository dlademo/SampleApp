class AdminPage<GenericBasePage

  element(:new_user) {|b| b.button(text:"New User")}                                  #New User
  #----------New Users Info---------------------------------------------------------------------------
  #element(:first_name) {|b| b.input(id:'inputFirstName')}                        #First Name
  element(:middle_name) {|b| b.text_field(text:"inputMiddleName")}                    #Middle Name
  element(:first_name) {|b| b.text_field(text:"inputLastName")}                       #Last name
  element(:user_name) {|b| b.text_field(text:"inputUsername")}                        #User Name
  element(:password) {|b| b.text_field(text:"inputPassword")}                         #Password
  element(:save_button) {|b| b.button(text:"Save")}                                  #Save Button
#----------Edit----------------------------------------------------------------------------------------

  element(:edit_button) {|b| b.links(text:"edit")}                                  #Save Button

  #---------Delete Button--------------------------------------------------------------------------
  element(:delete_button) {|b| b.button(text:'Delete User')}                                  #Delete Button
  element(:delete_popup_button) {|b| b.button(text:"Delete")}                                  #Delete Button
  element(:enable_disable_user) {|b| b.checkbox(id:"cbIsDisabled")}   #Enable_disable


  def disable_user
    enable_disable_user.when_present.click
    @browser.button(text:"Save").when_present.click

    sleep 2
    p "  -----------User has disabled---------------------   "

    end
#-------This method deletes a user from the system--------------------------------------------
def click_on_delete_button
  sleep 3
  delete_button.when_present.click                 #Click on the delete users button
  sleep 3
  delete_popup_button.when_present.click          #clicks on the delete pop up button
end

#----This method click on the new users button------------------------------------------------
  def click_on_new_user_button
    new_user.when_present.click
  end

#--------This method fills up new users info-----------------------------------------------
def fill_up_new_user_info_02
  p "  -------filling up info for new users-----------------    "
sleep 2
  @browser.input(id:"inputFirstName").when_present.send_keys ['j', 'a','n','n']

  @browser.input(id:"inputMiddleName").when_present.send_keys [ 'j', 'a','n','n']

  @browser.input( id:"inputLastName").when_present.send_keys [ 'j', 'a','n','n']

  @browser.input(id:"inputUsername").when_present.send_keys ['j', 'a','n','n']

  @browser.input(id:"inputPassword").when_present.send_keys [ 'j', 'a','n','n']

  @browser.button(text:"Save").when_present.click

sleep 2
  p "  ---------Congrates a new users has been created------------------------    "
  # middle_name.when_present.set("Jr")
  # first_name.when_present.set("Adam")
  # user_name.when_present.set("jhon")
  # password.when_present.set("password")
  # save_button.when_present.click

end




  def fill_up_new_user_info
    p "  -------filling up info for new users-----------------    "
    sleep 2
    @browser.input(id:"inputFirstName").when_present.send_keys ['j', 'a','n','n']

    @browser.input( id:"inputLastName").when_present.send_keys [ 'j', 'a','n','y']

    @browser.input(id:"inputUserEmail").when_present.send_keys ['jany@gmail.com']

    @browser.button(text:"Save").when_present.click

    sleep 2
    p "  ---------Congrates a new users has been created------------------------    "

  end




  def click_on_edit
sleep 5
    p ' XXXXXXX---You are about to edit a user info------XXXXXXXXXXXXXXXXXXXXXX'
      a = edit_button.last
      a.click
    p ' X------editing just got initiated--------------------------------X '

  end

#--------------This method cleans previous info and reinsert new info of the users-------------------
  def edit_user_info
    p "  -----------User info has been edited successfully---------------------    "
    sleep 2
    @browser.input(:id => "inputFirstName").to_subtype.clear
    @browser.input(id:"inputFirstName").when_present.send_keys ['j', 'a','n','y']
    @browser.input(:id => "inputMiddleName").to_subtype.clear
    @browser.input(id:"inputMiddleName").when_present.send_keys [ 'D', 'o','p','e']
    @browser.input(:id => "inputLastName").to_subtype.clear
    @browser.input( id:"inputLastName").when_present.send_keys [ 'j', 'o','h','n']

    @browser.button(text:"Save").when_present.click

    sleep 2
    p "  -----------User info has been edited successfully---------------------   "
    # middle_name.when_present.set("Jr")
    # first_name.when_present.set("Adam")
    # user_name.when_present.set("jhon")
    # password.when_present.set("password")
    # save_button.when_present.click

  end


  #-----This method clicks on the save button --------------------------------------------
  def click_on_save_button
    @browser.button(text:"Save").when_present.click
  end



end