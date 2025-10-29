from flask import Flask, render_template

# Explicitly set template and static folder paths relative to backend/
app = Flask(
    __name__,
    template_folder='../templates',
    static_folder='../static'
)

@app.route("/")
def home():
    # Render the homepage
    return render_template("index.html")

if __name__ == "__main__":
    # Run the Flask app, listen on all interfaces so it can be accessed from host
    app.run(host="0.0.0.0", port=5000, debug=True)

