(load "{{ cookiecutter.project_name }}.asd")

(ql:quickload :{{ cookiecutter.project_name }})

(asdf:make :{{ cookiecutter.project_name }})
