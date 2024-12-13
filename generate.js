
(function() {
    const fs = require('node:fs')

    let component = 'a'//process.env.COMPONENT
    let enabledComponents = {}

    if (component == 'a') {
        enabledComponents.s1 = 'enabled'
        enabledComponents.s2 = 'enabled'
        enabledComponents.s3 = 'enabled'
    }

    if (component == 'm') {
        enabledComponents.s1 = 'enabled'
        enabledComponents.s2 = 'enabled'
        enabledComponents.s3 = 'enabled'
    }

    if (component == 's1') {
        enabledComponents.s1 = 'enabled'
    }

    if (component == 's2') {
        enabledComponents.s2 = 'enabled'
    }

    if (component == 's3') {
        enabledComponents.s3 = 'enabled'
    }

    fs.writeFileSync('env.json', JSON.stringify(enabledComponents))
})()