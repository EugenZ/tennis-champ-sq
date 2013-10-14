package models

import play.api.db._
import play.api.Play.current

import anorm._
import anorm.SqlParser._

import scala.language.postfixOps

case class Player(id: Pk[Long], name: String, nativeName: Option[String], groupId: Long, email: Option[String], project: Option[String], username: String, password: String, roleId: Long)

object Player {
  
  // -- Parsers
  
  /**
   * Parse a Player from a ResultSet
   */
  val simple = {
    get[Pk[Long]]("id") ~
    get[String]("name") ~
    get[Option[String]]("native_name") ~
    get[Long]("group_id") ~
    get[Option[String]]("email") ~
    get[Option[String]]("project") ~
    get[String]("username") ~
    get[String]("password") ~
    get[Long]("role_id") map {
      case id~name~nativeName~groupId~email~project~username~password~roleId => Player(
        id, name, nativeName, groupId, email, project, username, password, roleId
      )
    }
  }
  
  // -- Queries
  
  /**
   * Retrieve a Player from username.
   */
  def findByEmail(username: String): Option[Player] = {
    DB.withConnection { implicit connection =>
      SQL("select * from player where username = {username}").on(
        'username -> username
      ).as(Player.simple.singleOpt)
    }
  }
  
  /**
   * Retrieve a Player from groupId.
   */
  def findByTeam(groupId: Long): Seq[Player] = {
    DB.withConnection { implicit connection =>
      SQL("select * from player where group_id = {groupId}").on(
        'groupId -> groupId
      ).as(Player.simple *)
    }
  }
  
  /**
   * Retrieve all players.
   */
  def findAll: List[Player] = {
    DB.withConnection { implicit connection =>
      SQL("select * from player").as(Player.simple *)
    }
  }

}