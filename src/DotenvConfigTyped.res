type parsed = {
  @as("INPUT_PATH") inputPath: string,
  @as("OUTPUT_GIT_REPO") outputGitRepo: string,
  @as("OUTPUT_FOLDER") outputFolder: string,
}

type config = {
  parsed : parsed
}

@module("dotenv")
external config: unit => config = "config"

let parse = () => {
  let parsed = config().parsed
  Js.Console.log(parsed)
  Js.Console.log(parsed.inputPath)
  Js.Console.log(parsed.outputGitRepo)
  Js.Console.log(parsed.outputFolder)
  parsed
}

//let parsed = parse()
