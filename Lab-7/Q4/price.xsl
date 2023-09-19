<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="itemslist">
        <html>
            <head>
                <title>Price Sorting xsl</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
                    rel="stylesheet"
                    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
                    crossorigin="anonymous"></link>
                <script
                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
                    crossorigin="anonymous"></script>
                <style>
                    td,th{
                        text-align: center;
                    }
                </style>
            </head>
            <body>
                <div
                    class="container mt-5 d-flex flex-column align-items-center justify-content-center">
                    <h2>Items Sorting</h2>
                </div>
                <div
                    class="container mt-5 table-responsive d-flex align-items-start justify-content-between">
                    <table class="table table-bordered me-2 border-primary">
                        <thead class="table-primary table-bordered border-primary">
                            <tr>
                                <th colspan="2">All Items</th>
                            </tr>
                            <tr>
                                <th>Item Name</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="item">
                                <tr>
                                    <td>
                                        <xsl:value-of select="name" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="price" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>

                    <table class="table table-bordered ms-2 border-success">
                        <thead class="table-success table-bordered border-success">
                            <tr>
                                <th colspan="2">Items whose price is &lt; 300 </th>
                            </tr>
                            <tr>
                                <th>Item Name</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="item">
                                <xsl:if test="price &lt; 300">
                                    <tr>
                                        <td>
                                            <xsl:value-of select="name" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="price" />
                                        </td>
                                    </tr>
                                </xsl:if>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>