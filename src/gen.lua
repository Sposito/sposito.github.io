local function generate_css()
    local css = [[
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h1 {
        color: #333;
    }
    p {
        color: #666;
    }
    a {
        color: #1a73e8;
        text-decoration: none;
    }
    ]]

    local file = io.open("styles.css", "w")
    file:write(css)
    file:close()
end

local function generate_html()
    local html = [[
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sposi.to</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <div class="container">
            <h1>Welcome to my Head</h1>
            <p>This page was generated using Lua 5.1 and deployed with GitHub Actions.</p>
            <p>Check out my <a href="https://github.com/sposito">GitHub profile</a>.</p>
        </div>
    </body>
    </html>
    ]]
    
    local file = io.open("index.html", "w")
    file:write(html)
    file:close()
end

generate_css()
generate_html()
