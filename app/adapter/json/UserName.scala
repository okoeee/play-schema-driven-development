package adapter.json

import play.api.libs.json._

/**
  * Represents the Swagger definition for UserName.
  * @param firstName ユーザー名(姓)
  * @param lastName ユーザー名(名)
  */
case class UserName(
  firstName: String,
  lastName: String
)

object UserName {
  implicit lazy val userNameJsonFormat: Format[UserName] = Json.format[UserName]
}

