module.exports = {
    "moduleFileExtensions": [
        "js",
        // tell Jest to handle `*.vue` files
        "vue"
    ],
    "moduleNameMapper": {
        // support the same @ -> src alias mapping in source code
        "^@/(.*)$": "<rootDir>/src/$1"
    },
    "transform": {
        // process `*.js` files with `babel-jest`
        "^.+\\.js$": "<rootDir>/node_modules/babel-jest",
        // process `*.vue` files with `vue-jest`
        ".*\\.(vue)$": "<rootDir>/node_modules/vue-jest"
    },
    "snapshotSerializers": [
        //for snapshot tests
        "<rootDir>/node_modules/jest-serializer-vue"
    ]
}