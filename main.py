from flask import Flask
app = Flask(__name__)

@app.route("/health")
def health():
    return {"status": "ok"}


a = int(input("Podaj liczbe a: "))
b = int(input("Podaj liczbe b: "))

print(a+b)
