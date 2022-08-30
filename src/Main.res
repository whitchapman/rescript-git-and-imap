
let commitFiles = (inputPath: string, outputGitRepo: string, outputFolder: string) => {

  Js.Console.log("inputPath=" ++ inputPath)
  Js.Console.log("outputGitRepo=" ++ outputGitRepo)
  Js.Console.log("outputFolder=" ++ outputFolder)

  let outputGitRepo = "/Users/whit/Projects/temp/test3"
  let options = {Git.baseDir: outputGitRepo, binary: "git"}

  let git = Git.simpleGit(options)
  Js.Console.log(git)

  let u = git->Git.init(false) //bare=false create only a `.git` directory
  Js.Console.log(u)

/*
  let _u = Promise.resolve(git->Git.init(false))->((value) =>
    Js.Console.log(value)
  );
*/

//  let u = git->Git.clean()

//  git->Git.rm([outputFolder++"/*"], (unk) => {
//      Js.Console.log(unk)
//  })

}

let main = () => {
  let inputPath = Dotenv.get("INPUT_PATH")
  let outputGitRepo = Dotenv.get("OUTPUT_GIT_REPO")
  let outputFolder = Dotenv.get("OUTPUT_FOLDER")
  switch (inputPath, outputGitRepo, outputFolder) {
    | (Some(inputPath), Some(outputGitRepo), Some(outputFolder)) =>
      commitFiles(inputPath, outputGitRepo, outputFolder)
    | _ => Js.Console.log("Invalid .env config")
  }
}

main()
