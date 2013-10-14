package models

import play.api.db._
import play.api.Play.current

import anorm._
import anorm.SqlParser._

import scala.language.postfixOps

case class Team (id: Pk[Long], name: String) {
  lazy val teamPlayers: List[Player] = {
	DB.withConnection { implicit connection =>
      SQL("""
          select * from player p
          where p.group_id = {id}
          """).on('id -> id)
          .as(Player.simple *)
	}
  }
}

object Team {
  
  // -- Parsers
  
  /**
   * Parse a Team from a ResultSet
   */
  val simple = {
    get[Pk[Long]]("id") ~
    get[String]("name") map {
      case id~name => Team(
        id, name
      )
    }
  }
  
  // -- Queries
  
  /**
   * Retrieve all teams.
   */
  def findAll: List[Team] = {
    DB.withConnection { implicit connection =>
      SQL("select * from team").as(Team.simple *)
    }
  }

}