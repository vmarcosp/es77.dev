const bsconfig = require('./bsconfig.json')

const transpileModules = ['bs-platform'].concat(bsconfig['bs-dependencies'])
const withTranspiler = require('next-transpile-modules')(transpileModules)

module.exports = withTranspiler(['bs-platform'], {
})

const config = {
  target: 'serverless',
  pageExtensions: ['jsx', 'js'],
  transpileModules: ['bs-platform'].concat(bsconfig['bs-dependencies']),
  env: {
    ENV: process.env.NODE_ENV
  }
}

module.exports = withTranspiler(config)
