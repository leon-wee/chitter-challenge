module SessionHelpers
  def sign_up_as(user)
    visit('/users/sign_up')
    fill_in('email', with: user.email)
    fill_in('password', with: user.password)
    fill_in('name', with: user.name)
    fill_in('username', with: user.username)
    fill_in('password_confirmation', with: user.password_confirmation)
    click_button('Register')
  end
end