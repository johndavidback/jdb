from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
  return 'Welcome to hell! Get yourself a glass of water. And then pay me for it.'

if __name__ == "__main__":
    app.run()
