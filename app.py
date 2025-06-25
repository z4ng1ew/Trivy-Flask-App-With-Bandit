from flask import Flask, request, render_template_string

app = Flask(__name__)

@app.route("/")
def home():
    name = request.args.get("name", "Гость")
    return render_template_string(f"<h1>Привет, {name}!</h1>")  # XSS-уязвимость

@app.route("/secret")
def secret():
    return "Токен API: ghp_supersecrettoken1234567890"  # секрет

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
