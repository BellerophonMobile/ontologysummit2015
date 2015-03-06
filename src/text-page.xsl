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

    <xsl:if test="description">
      <xsl:element name="meta">
        <xsl:attribute name="name">description</xsl:attribute>
        <xsl:attribute name="content"><xsl:value-of select="description"/></xsl:attribute>
      </xsl:element>
    </xsl:if>

    <xsl:if test="author">
      <xsl:element name="meta">
        <xsl:attribute name="name">author</xsl:attribute>
        <xsl:attribute name="content"><xsl:value-of select="author"/></xsl:attribute>
      </xsl:element>
    </xsl:if>
    
    <title>Ontology Summit 2015: The Internet of Things</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />

    <link href="bootstrap-social.css" rel="stylesheet" />

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
            <li role="presentation" id="n-main"><a href="index.html">Main</a></li>
            <li role="presentation" id="n-vision"><a href="vision.html">Vision</a></li>
            <li role="presentation" id="n-events"><a href="events.html">Events</a></li>
            <li>
              <div class="text-center" style="font-size:50%;">
                <!-- Twitter -->
                <a href="http://twitter.com/home?status=$TITLE $URL"
                   title="Share on Twitter" target="_blank"
                   class="btn btn-xs btn-social-icon btn-twitter">
                  <i class="fa fa-twitter"></i>
                </a>
                <!-- Facebook -->
                <a href="https://www.facebook.com/sharer/sharer.php?u=$URL"
                   title="Share on Facebook" target="_blank"
                   class="btn btn-xs btn-social-icon btn-facebook">
                  <i class="fa fa-facebook"></i>
                </a>
                <!-- Google+ -->
                <a href="https://plus.google.com/share?url=$URL"
                   title="Share on Google+" target="_blank"
                   class="btn btn-xs btn-social-icon btn-googleplus">
                  <i class="fa fa-google-plus"></i>
                </a>
                <br/>
                <!-- StumbleUpon -->
                <a href="http://www.stumbleupon.com/submit?url=$URL"
                   title="Share on StumbleUpon" target="_blank"
                   data-placement="top"
                   class="btn btn-xs btn-social-icon btn-stumbleupon">
                  <i class="fa fa-stumbleupon"></i>
                </a>
                <!-- Reddit -->
                <a href="http://www.reddit.com/submit?url=$URL&amp;title=$TITLE"
                   title="Share on Reddit" target="_blank"
                   class="btn btn-xs btn-social-icon btn-reddit">
                  <i class="fa fa-reddit"></i>
                </a>
                <!-- LinkedIn --> 
                <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=$URL&amp;title=$TITLE&amp;summary="
                   title="Share on LinkedIn" target="_blank"
                   class="btn btn-xs btn-social-icon btn-linkedin">
                  <i class="fa fa-linkedin"></i>
                </a>
              </div>
            </li>
          </ul>

        </nav>
        <h3>Ontology Summit 2015</h3>
      </div>

      <xsl:choose>
        <xsl:when test="@main">
          <img src="art/iot.svg" width="100%"
               alt="Internet of Things header graphic."
               title="Internet of Things" />
        </xsl:when>
        <xsl:otherwise>
          <img src="art/iot-banner.svg" width="100%"
               alt="Internet of Things banner."
               title="Internet of Things" />
        </xsl:otherwise>
      </xsl:choose>

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
    <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
    
    <script language="javascript">
      var category =
      <xsl:choose>
        <xsl:when test="@category">"#n-<xsl:value-of select="@category" />";</xsl:when>
        <xsl:otherwise>"";</xsl:otherwise>
      </xsl:choose>
    </script>
    <script src="main.js"></script>  
  </body>
</html>
</xsl:template>

</xsl:stylesheet>
