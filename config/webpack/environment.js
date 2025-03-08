const { environment } = require('@rails/webpacker')
const webpacker = require('webpacker')

environment.plugins.append('Provide',
     new webpacker.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        Popper: ['popper.js', 'default']
    })
)

module.exports = environment
