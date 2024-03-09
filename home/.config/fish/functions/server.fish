function server --description "Create a simple web server in the current directory"
    xdg-open http://localhost:8888
    python3 -m http.server 8888
end
