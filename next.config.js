const bsconfig = require('./bsconfig.json')

const transpileModules = ['bs-platform'].concat(bsconfig['bs-dependencies'])
const withTranspiler = require('next-transpile-modules')(transpileModules)

const withBundleAnalyzer = require('@next/bundle-analyzer')({
  enabled: process.env.ANALYZE === 'true',
})

const config = {
 webpack(config) {
    config.module.rules.push({
      test: /\.svg$/,
      issuer: {
        test: /\.(js|ts)x?$/,
       // for webpack 5 use
       // { and: [/\.(js|ts)x?$/] }
      },
      
      use: ['@svgr/webpack'],
    });

    return config;
  },
  target: 'serverless',
  pageExtensions: ['jsx', 'js'],
  transpileModules: ['bs-platform'].concat(bsconfig['bs-dependencies']),
  env: {
    ENV: process.env.NODE_ENV
  }
}

module.exports = withTranspiler(withBundleAnalyzer(config))
