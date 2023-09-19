<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/marksheet/student">
    <html>
      <head>
        <title>Student Marksheet</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous"></link>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
          crossorigin="anonymous"></script>
        <style>
          td, th{
            text-align: center;
          }
        </style>
      </head>
      <body>
        <div class="container d-flex flex-column align-items-center justify-content-center">
          <h2>The Maharaja Sayajirao University of Baroda</h2>
          <h5>Statement of Grade for Second Semester of BE-II Examination: May-2023</h5>
        </div>

        <div class="container d-flex align-items-center justify-content-center">
          <table class="table table-borderless">
            <tr>
              <th>Name</th>
              <td>
                <xsl:value-of select="details/name" />
              </td>
              <th>Seat No.</th>
              <td>
                <xsl:value-of select="details/seat" />
              </td>
            </tr>
            <tr>
              <th>PRN</th>
              <td>
                <xsl:value-of select="details/PRN" />
              </td>
              <th>Branch</th>
              <td>
                <xsl:value-of select="details/branch" />
              </td>
            </tr>
          </table>
        </div>

        <div class="container d-flex align-items-center justify-content-center">
          <table class="table border border-black">
            <thead>
              <tr>
                <th rowspan="1" scope="col">Course Code</th>
                <th rowspan="1" scope="col">Course Name</th>
                <th rowspan="1" scope="col">Subject Type</th>
                <th colspan="2" scope="col">UA</th>
                <th colspan="2" scope="col">IA</th>
                <th colspan="3" scope="col">Total</th>
                <th rowspan="1" scope="col">Result Status</th>
              </tr>
              <tr>
                <th></th>
                <th></th>
                <th></th>
                <th colspan="1">Max</th>
                <th colspan="1">Obt</th>
                <th colspan="1">Max</th>
                <th colspan="1">Obt</th>
                <th colspan="1">Max</th>
                <th colspan="1">Min</th>
                <th colspan="1">Obt</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="markstable/c1">
                <tr>
                  <th scope="row">
                    <xsl:value-of select="Course_Code" />
                  </th>
                  <td>
                    <xsl:value-of select="Course_Name" />
                  </td>
                  <td>
                    <xsl:value-of select="Subject_Type" />
                  </td>
                  <td>
                    <xsl:value-of select="UAMax" />
                  </td>
                  <td>
                    <xsl:value-of select="UAObt" />
                  </td>
                  <td>
                    <xsl:value-of select="IAMax" />
                  </td>
                  <td>
                    <xsl:value-of select="IAObt" />
                  </td>
                  <td>
                    <xsl:value-of select="TMax" />
                  </td>
                  <td>
                    <xsl:value-of select="TMin" />
                  </td>
                  <td>
                    <xsl:value-of select="TObt" />
                  </td>
                  <td>
                    <xsl:value-of select="Result_Status" />
                  </td>
                </tr>
              </xsl:for-each>
              <xsl:for-each select="ed">
                <tr>
                  <td></td>
                  <td></td>
                  <td>Total</td>
                  <td></td>
                  <td>
                    <xsl:value-of select="UAObt" />
                  </td>
                  <td></td>
                  <td>
                    <xsl:value-of select="IAObt" />
                  </td>
                  <td>
                    <xsl:value-of select="TMax" />
                  </td>
                  <td></td>
                  <td>
                    <xsl:value-of select="TObt" />
                  </td>
                  <td>
                    <xsl:value-of select="Result_Status" />
                  </td>
                </tr>
              </xsl:for-each>

              <xsl:for-each select="ed1">
                <tr>
                  <td>
                    <strong>Percentage:</strong>
                    <xsl:value-of select="Percentage" />
                  </td>
                  <td>
                    <strong>Class:</strong>
                    <xsl:value-of select="Class" />
                  </td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
              </xsl:for-each>

              <xsl:for-each select="ed2">
                <tr>
                  <td colspan="2">
                    <strong>Result:</strong>
                    <xsl:value-of select="Result" />
                  </td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>