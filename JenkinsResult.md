Started by user Eyal David Doctory
Obtained Jenkinsfile from git https://github.com/TheDoc14/jenkConectionProj.git
[Pipeline] Start of Pipeline
[Pipeline] node
Running on Jenkins in C:\ProgramData\Jenkins\.jenkins\workspace\GitJenkinsConnectionProj
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Declarative: Checkout SCM)
[Pipeline] checkout
Selected Git installation does not exist. Using Default
The recommended git tool is: NONE
No credentials specified
 > git.exe rev-parse --resolve-git-dir C:\ProgramData\Jenkins\.jenkins\workspace\GitJenkinsConnectionProj\.git # timeout=10
Fetching changes from the remote Git repository
 > git.exe config remote.origin.url https://github.com/TheDoc14/jenkConectionProj.git # timeout=10
Fetching upstream changes from https://github.com/TheDoc14/jenkConectionProj.git
 > git.exe --version # timeout=10
 > git --version # 'git version 2.47.1.windows.1'
 > git.exe fetch --tags --force --progress -- https://github.com/TheDoc14/jenkConectionProj.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git.exe rev-parse "refs/remotes/origin/main^{commit}" # timeout=10
Checking out Revision 38312adc3060651f22cd29ce509c6091d156d058 (refs/remotes/origin/main)
 > git.exe config core.sparsecheckout # timeout=10
 > git.exe checkout -f 38312adc3060651f22cd29ce509c6091d156d058 # timeout=10
Commit message: "channged script according to windows files and updated jenkins"
 > git.exe rev-list --no-walk c1520db9958d29e21dac2207c83759488ca69d65 # timeout=10
[Pipeline] }
[Pipeline] // stage
[Pipeline] withEnv
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Checkout)
[Pipeline] git
Selected Git installation does not exist. Using Default
The recommended git tool is: NONE
No credentials specified
 > git.exe rev-parse --resolve-git-dir C:\ProgramData\Jenkins\.jenkins\workspace\GitJenkinsConnectionProj\.git # timeout=10
Fetching changes from the remote Git repository
 > git.exe config remote.origin.url https://github.com/TheDoc14/jenkConectionProj.git # timeout=10
Fetching upstream changes from https://github.com/TheDoc14/jenkConectionProj.git
 > git.exe --version # timeout=10
 > git --version # 'git version 2.47.1.windows.1'
 > git.exe fetch --tags --force --progress -- https://github.com/TheDoc14/jenkConectionProj.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git.exe rev-parse "refs/remotes/origin/main^{commit}" # timeout=10
Checking out Revision 38312adc3060651f22cd29ce509c6091d156d058 (refs/remotes/origin/main)
 > git.exe config core.sparsecheckout # timeout=10
 > git.exe checkout -f 38312adc3060651f22cd29ce509c6091d156d058 # timeout=10
 > git.exe branch -a -v --no-abbrev # timeout=10
 > git.exe branch -D main # timeout=10
 > git.exe checkout -b main 38312adc3060651f22cd29ce509c6091d156d058 # timeout=10
Commit message: "channged script according to windows files and updated jenkins"
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Build)
[Pipeline] bat

C:\ProgramData\Jenkins\.jenkins\workspace\GitJenkinsConnectionProj>echo Building the project... 
Building the project...
[Pipeline] bat

C:\ProgramData\Jenkins\.jenkins\workspace\GitJenkinsConnectionProj>dir
 Volume in drive C has no label.
 Volume Serial Number is 3C98-FEF3

 Directory of C:\ProgramData\Jenkins\.jenkins\workspace\GitJenkinsConnectionProj

09/02/2025  19:37    <DIR>          .
09/02/2025  19:02    <DIR>          ..
09/02/2025  19:35               989 Jenkinsfile
09/02/2025  19:18               254 output_~0
09/02/2025  19:11               198 README.md
09/02/2025  19:37               746 script.cmd
               4 File(s)          2,187 bytes
               2 Dir(s)  261,874,593,792 bytes free
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Run Script)
[Pipeline] script
[Pipeline] {
[Pipeline] bat

C:\ProgramData\Jenkins\.jenkins\workspace\GitJenkinsConnectionProj>script.cmd "hello" 
File created: output_2025-09-02_19-37.html
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Archive Output)
[Pipeline] bat

C:\ProgramData\Jenkins\.jenkins\workspace\GitJenkinsConnectionProj>echo Archiving output... 
Archiving output...
[Pipeline] archiveArtifacts
Archiving artifacts
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
Finished: SUCCESS
