let main = () => {
  let inputPath = Dotenv.get("INPUT_PATH")
  let outputGitRepo = Dotenv.get("OUTPUT_GIT_REPO")
  let outputFolder = Dotenv.get("OUTPUT_FOLDER")
  switch (inputPath, outputGitRepo, outputFolder) {
    | (Some(_inputPath), Some(_outputGitRepo), Some(_outputFolder)) => ()
    | _ => Js.Console.log("Invalid .env config")
  }
}

main()
