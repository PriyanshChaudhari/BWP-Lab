<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="library">
        <html>
            <head>
                <title>Books Collection</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
                    rel="stylesheet"
                    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
                    crossorigin="anonymous"></link>
                <script
                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
                    crossorigin="anonymous"></script>
                <style>
                    td {
                        text-align: center;
                        font-size: 2.5vh;
                    }
                    th {
                        text-align: center;
                        font-size: 2.5vh;
                    }
                </style>
            </head>
            <body>
                <div class="container mt-5 d-flex flex-column align-items-center justify-content-center">
                    <h1>Books Collection</h1>
                </div>
                <div class=" container mt-5 table-responsive d-flex align-items-center justify-content-center">
                    <table class="table table-bordered border-primary">
                        <thead class="table-primary table-bordered border-primary">
                            <tr>
                                <th>Title</th>
                                <th>Author</th>
                                <th>ISBN</th>
                                <th>Quantity</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="book">
                            <tr>
                            <td>
                                <xsl:value-of select="title" />
                            </td>
                            <td>
                                <xsl:value-of select="author" />
                            </td>
                            <td>
                                <xsl:value-of select="ISBN" />
                            </td>
                            <td>
                                <xsl:value-of select="quantity" />
                            </td>
                            </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>