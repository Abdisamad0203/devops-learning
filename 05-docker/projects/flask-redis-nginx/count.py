from flask import Flask
import redis
import os

app = Flask(__name__)

redis_host = os.getenv("REDIS_HOST", "redis")
redis_port = int(os.getenv("REDIS_PORT", 6379))

r = redis.Redis(host=redis_host, port=redis_port)

@app.route("/")
def welcome():
    return """
    <!DOCTYPE html>
    <html>
    <head>
        <title>I'm Watching You 👀</title>
        <style>
            body {
                margin: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                background: linear-gradient(135deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5, #007bff, #7a00ff, #ff00c8);
                background-size: 400% 400%;
                animation: rainbow 8s ease infinite;
                overflow: hidden;
                font-family: Arial, sans-serif;
            }

            @keyframes rainbow {
                0% { background-position: 0% 50%; }
                50% { background-position: 100% 50%; }
                100% { background-position: 0% 50%; }
            }

            .container {
                text-align: center;
            }

            .eyes {
                font-size: 180px;
                animation: bounce 1s infinite alternate;
            }

            h1 {
                font-size: 90px;
                color: white;
                text-shadow: 5px 5px 15px black;
                animation: pulse 1s infinite alternate;
                margin-top: 20px;
            }

            @keyframes pulse {
                from { transform: scale(1); }
                to { transform: scale(1.15); }
            }

            @keyframes bounce {
                from { transform: translateY(0px); }
                to { transform: translateY(-25px); }
            }
        </style>
    </head>

    <body>
        <div class="container">
            <div class="eyes">👀 👀 👀</div>
            <h1>I'M WATCHING YOU!!!</h1>
            <div class="eyes">👀 👀 👀</div>
        </div>
    </body>
    </html>
    """

@app.route("/count")
def count():
    count = r.incr("visits")
    return f"This page has been visited <b>{count}</b> times."

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5002)