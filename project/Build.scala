import sbt._
import Keys._
import play.Project._

object ApplicationBuild extends Build {

  val appName = "tennis-champ"
  val appVersion = "1.0-SNAPSHOT"

  val appDependencies = Seq(
    jdbc,
    "com.h2database" % "h2" % "1.3.166",
    "postgresql" % "postgresql" % "9.1-901-1.jdbc4")

  val main = play.Project(appName, appVersion, appDependencies).settings( // Add your own project settings here      
  )

}
