type config = {
  parsed : Js.Dict.t<string>
}

@module("dotenv")
external config: unit => config = "config"

let config = config().parsed

let get = (key: string): option<string> => config->Js.Dict.get(key)
