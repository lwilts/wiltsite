import os

from flask import Flask, render_template

site = Flask(__name__)


@site.route("/")
def index():
    return render_template("index.html")


if __name__ == "__main__":
    site.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))
