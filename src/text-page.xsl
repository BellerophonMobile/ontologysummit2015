<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE xsl:stylesheet [ 
  <!ENTITY nbsp "&#160;">
  <!ENTITY lt "&#60;">
  <!ENTITY gt "&#62;">
  <!ENTITY lang "&#9001;">
  <!ENTITY rang "&#9002;">
]>


<xsl:stylesheet version = '1.0'
                xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
                xmlns:html="http://www.w3.org/1999/xhtml"
                xmlns:date="http://exslt.org/dates-and-times"
                extension-element-prefixes="date"
                >



  <xsl:output method="html" encoding="ISO-8859-1" indent="yes"
              doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
              doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
              cdata-section-elements="cdata"
              />

<xsl:template match="/page">
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="../../favicon.ico" />

    <title>Ontology Summit 2015: The Internet of Things</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />

    <!-- Custom styles for this template -->
    <link href="main.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">
      <div class="header">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" class="active"><a href="index.html">Home</a></li>
            <li role="presentation"><a href="vision.html">Vision</a></li>
            <li role="presentation"><a href="#">Contact</a></li>
          </ul>
        </nav>
        <h3>Ontology Summit 2015</h3>
      </div>

      <xsl:choose>
        <xsl:when test="@main">
          <img src="art/iot.svg" width="100%" />
        </xsl:when>
        <xsl:otherwise>
          <img src="art/iot-banner.svg" width="100%" />
        </xsl:otherwise>
      </xsl:choose>
      
      <!--
      <div class="jumbotron">
        <h1>Jumbotron heading</h1>
        <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
        <p><a class="btn btn-lg btn-success" href="#" role="button">Sign up today</a></p>
      </div>
      -->

      <div class="row marketing">
        <div class="justify">

          <xsl:if test="title">
            <h4><xsl:value-of select="title" /></h4>
          </xsl:if>
          
          <xsl:copy-of select="content" />
        </div>
      </div>
      
      <footer class="footer">
        <p><a href="http://ontolog.cim3.net/OntologySummit/2015/">Ontology Summit 2015</a> is organized by
          <a href="http://ontolog.cim3.net/">Ontolog</a>,
          <a href="http://www.nist.gov/">NIST</a>,
          <a href="http://ncor.us/">NCOR</a>,
          <a href="http://www.bioontology.org/">NCBO</a>,
          <a href="http://www.iaoa.org/">IAOA</a>,
          and <a href="https://www.nitrd.gov/">NCO NITRD</a>.
        </p>
      </footer>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
</xsl:template>

</xsl:stylesheet>
