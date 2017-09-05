# Git Flow Alternative

_Sep 05, 2017_

I recently watched a team switch to git flow from a custom git branching model; I watched as that team accepted with blind faith that git flow would solve their problems. I can say with certainty that none of their problems have been resolved by the change.

## Why isn't it working?

### The point of git flow

(* [source](https://datasift.github.io/gitflow/IntroducingGitFlow.html))

1. Parallel Development
2. Release Staging Area
3. Support For Emergency Fixes

These seem like desirable features in a source control management system. Git flow can provide these features, but it is important to understand the classic git flow is not the only way to achieve these things--there are theoretically infinite ways to have what you want out of git--that's part of the problem:

## Git is Too Complicated!

There are only a few objects in git, and you can slice and dice them a million different ways to get what you want. This seems to lead to a situation where there are too many choices; without adequate understanding it is impossible to choose and a developer must go with whatever suggestion seems reasonable.

I think the situation is very unfortunate because it came about due to the _simplicity_ of git. There are just a few objects inside the git system itself and they are just labeled and treated in different ways to accomplish a task.
