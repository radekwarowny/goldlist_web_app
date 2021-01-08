from flask import (
	Blueprint, flash, g, redirect, render_template, request, url_for
	)

from werkzeug.exceptions import abort

from goldlist_web_app.auth import login_required
from goldlist_web_app.db import get_db

bp = Blueprint('page', __name__)

@bp.route('/')
def index():
	db = get_db()
	terms = db.execute(
		'SELECT * FROM term ').fetchall()
	return render_template('page/index.html', terms=terms)