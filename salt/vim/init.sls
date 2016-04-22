vim:
  file.managed:
    - source: salt://vim/files/.vimrc
    - makedirs: True
{% for user in salt['user.list_users']() %}
{% set user_info = salt['user.info'](user) %} 
{% if user_info.home != None %}
    - name: {{ user_info.home }}/vimfiles/vimrc
{% endif %}
{% endfor %}
