type git

type options = {
  baseDir: string,
  binary: string
}

@module("simple-git")
external simpleGit: options => git = "simpleGit"

type unk

@module("simple-git")
external clean: (git, unit) => unk = "clean"

@send external init: (git, bool) => unk = "init"

//@module("simple-git")
//external init: (bool) => unk = "init"

@module("simple-git")
external rm: (git, array<string>, unk => unit) => unit = "rm"
