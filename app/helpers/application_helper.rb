module ApplicationHelper
  def check_member
    res = ''
    if member_signed_in?
      res << "Logged in as <strong> #{current_member.email} </strong>"
      res << (link_to 'Log out', destroy_member_session_path, method: :delete,
                                                              class: 'mr-2 float-right btn btn-outline-danger')
    else
      res << (link_to 'Sign in', member_session_path, class: 'float-right mr-2 btn btn-outline-secondary')
      res << (link_to 'Sign Up', new_member_registration_path, class: 'float-right mr-2 btn btn-outline-secondary')
    end
    res.html_safe
  end
end
