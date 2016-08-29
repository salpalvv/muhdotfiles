#!groovy

// Jenkinsfile

// TODO: can we setup logic?
// If change to provisioning, run provision test.
// Promote the docker container on success
// If no change to provisioning
// just spin up provisioned tomcat container for deployment testing
node('iac'){

	def err = null
	currentBuild.result = "SUCCESS"

	try {
		timeout(60){
			stage 'checkout'
				checkout scm
			stage 'bootstrap'
				echo 'docker run the centos 7 box'
			stage 'make dotfiles'
				echo 'make dotfiles'
			stage 'test dotfiles'
				echo 'test dotfiles'
				echo 'serverspec for dotfiles lul'
			stage 'cleanup'
				echo 'cleanup'

				def body = "${env.JOB_NAME} Test passed"
				def sub = env.JOB_NAME+' - Build '+env.BUILD_NUMBER+' - PASSED'
				def to = emailextrecipients([
					[$class: 'DevelopersRecipientProvider']
					])
				emailext body: body, subject: sub, to: to
		}
	}
	catch (error){
		err = error
		currentBuild.result = "FAILURE"

        def body = "${env.JOB_NAME} Test failed with ${err}. See ${env.BUILD_URL}"
        def sub = env.JOB_NAME+' - Build '+env.BUILD_NUMBER+' - FAILED'
        def to = emailextrecipients([
            [$class: 'DevelopersRecipientProvider'],
            [$class: 'CulpritsRecipientProvider']
            ])
        emailext body: body, subject: sub, to: to
    }

	finally {
		if (err){
			throw err
		}
	}

}
