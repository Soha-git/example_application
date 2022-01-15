#!env python3
'''
This is server with web-site
'''
# pylint: disable=import-error
from flask import Flask, render_template

# pylint: disable=unused-argument
app = Flask(__name__)


@app.route('/')
def index(name=None):
    '''
    This is function return index page
    '''
    return render_template('index.html', name=None)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port='8080')
