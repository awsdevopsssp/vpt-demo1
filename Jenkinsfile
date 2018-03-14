node {
    stage ('SCM'){
   checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'ssp-git-creds', url: 'https://github.com/awsdevopsssp/vpt-demo1.git']]])
   mail bcc: '', body: '''Team,
Jenkins Job Triggerd successfully.

Thanks,
Jenkins''', cc: '', from: '', replyTo: '', subject: 'ProjTwo Build Status', to: 'awsdevopsssp@gmail.com'        
}
stage ('Print'){
    sh "echo 'hi hello'"
}
stage ('Run Script'){
    sh "sh simple.sh"
}
}
