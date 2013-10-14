package controllers

import play.api._
import play.api.mvc._

import views._
import models._

object Application extends Controller {

  def index = Action {
    Redirect(routes.Application.teams)
  }

  /**
   * Display the paginated list of players.
   *
   * @param page Current page number (starts from 0)
   * @param orderBy Column to be sorted
   * @param filter Filter applied on computer names
   */
  def teams = Action { implicit request =>
    
    Ok(html.index(Team.findAll))
  }

}