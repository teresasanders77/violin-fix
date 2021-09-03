const path = require("path");

module.exports = {
    entry: {
        home: "./src/home.js",
    },
    output: {
        path: path.resolve(__dirname, "./build"),
        filename: "siteWide.min.js",
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
