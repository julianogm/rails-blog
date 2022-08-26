module ApplicationHelper
  def login_helper style = '', separador = ' '
    if current_user.is_a?(GuestUser)
      (link_to t('navbar.login'), new_user_session_path, class: style) +
      separador.html_safe +
      (link_to t('navbar.register'), new_user_registration_path, class: style)
    else
      link_to t('navbar.logout'), destroy_user_session_path, method: :delete, class: style
    end
  end

  def languages_helper
    "<a href='?locale=pt-BR'>
      <span class='flag-icon flag-icon-br'></span>
    </a>
    <a href='?locale=en'>
      <span class='flag-icon flag-icon-us'></span>
    </a>".html_safe
  end

  def copyright_generator
    "&copy; #{Time.now.year} | <b>Juliano Marques</b>".html_safe
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator(alert)
    end
  end

  def alert_generator(msg)
    js add_gritter(msg, :title => "Juliano Blog", :stick => false, :class_name => "custom-gritter")
  end
end
