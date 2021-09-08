const path = require("path");

module.exports = {
    entry: {
        home: "./src/home.js",
        "explore-season": "./src/explore-season.js",
    },
    output: {
        path: path.resolve(__dirname, "./build"),
        filename: "[name].min.js",
    },
    module: {
        rules: [
            {
                test: /\.js$/,
                exclude: /(node_modules)/,
                use: {
                    loader: "babel-loader",
                },
            },
        ],
    },
};
