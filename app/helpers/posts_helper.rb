module PostsHelper
  def create_post
    link_to('Create Post', new_post_path, class: 'float-right mr-2 btn btn-outline-secondary') if member_signed_in?
  end

  def show_author_name(post)
    res = ''
    res << "<small><em>by #{post.member.name} </em></small>" if member_signed_in?
    res.html_safe
  end
end
