{% if grains['os'] == 'Windows' %}
  {% set path = 'C:/Users/' %}
{% else %}
  {% set path = '/home/' %}
{% endif %}
users:
  user.present:
    - names:
      - jbest:
        - home: {{ path }}jbest
