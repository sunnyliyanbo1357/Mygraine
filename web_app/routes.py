from flask import Flask, render_template, request
import redis

app = Flask(__name__)

@app.route('/', methods=['POST', 'GET'])
def index():
    if not request.args.get('access_token'):
        message = 'No access token'
    else:
        message = request.args.get('access_token')
    return render_template('index.html', message=message)

@app.route('/api')
def api():
    return 'api()'

@app.route('/test')
def test():
    return 'test endpoint'

if __name__ == '__main__':

    app.debug = True
    app.run()