import http.server
import socketserver

PORT = 8000
DIRECTORY = "."

class MyHttpRequestHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        if self.path == '/info.json':
            self.path = 'info.json'
        return http.server.SimpleHTTPRequestHandler.do_GET(self)
    
handler_object = MyHttpRequestHandler

with socketserver.TCPServer(("",PORT), handler_object) as httpd:
    print("Serving at port", PORT)
    httpd.serve_forever()