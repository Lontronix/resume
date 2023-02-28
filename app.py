import flask

app = flask.Flask(__name__)

@app.route("/", methods=["GET"])
def get_resume():
	return flask.send_file("out/blue/gerol-resume.pdf")

@app.route("/green", methods=["GET"])
def get_green_resume():
	return flask.send_file("out/green/gerol-resume.pdf")

@app.route("/yellow", methods=["GET"])
def get_yellow_resume():
	return flask.send_file("out/yellow/gerol-resume.pdf")

@app.route("/orange", methods=["GET"])
def get_orange_resume():
	return flask.send_file("out/orange/gerol-resume.pdf")

@app.route("/red", methods=["GET"])
def get_red_resume():
	return flask.send_file("out/red/gerol-resume.pdf")

@app.route("/purple", methods=["GET"])
def get_purple_resume():
	return flask.send_file("out/purple/gerol-resume.pdf")

@app.route("/blue", methods=["GET"])
def get_blue_resume():
	return flask.send_file("out/blue/gerol-resume.pdf")

if __name__ == "__main__":
	app.run()

