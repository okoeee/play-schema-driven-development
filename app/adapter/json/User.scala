package adapter.json

import play.api.libs.json._

/**
  * Represents the Swagger definition for User.
  * @param id ユーザーID
  * @param email メールアドレス
  * @param age 年齢
  */
case class User(
  id: Long,
  name: UserName,
  email: String,
  age: Option[Int]
)

object User {
  implicit lazy val userJsonFormat: Format[User] = Json.format[User]
}

