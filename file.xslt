<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <div class="top-games">
            <ul>
                <xsl:apply-templates/>
            </ul>
        </div>
    </xsl:template>
    <xsl:template match="game">
        <li>
            <div class="data">
                <p>Name: <xsl:value-of select="name"/></p>
                <p>Genre: <xsl:value-of select="genre"/></p>
                <p>Date: <xsl:value-of select="date"/></p>
                <p>Rating: <xsl:value-of select="rating"/></p>
                <p>Reviews:</p>
				<ul>
					<li><p>Review: <xsl:value-of select="reviews/review[1]"/></p></li>
					<li><p>Review: <xsl:value-of select="reviews/review[2]"/></p></li>
					<li><p>Review: <xsl:value-of select="reviews/review[3]"/></p></li>
					<li><p>Review: <xsl:value-of select="reviews/review[4]"/></p></li>
					<li><p>Review: <xsl:value-of select="reviews/review[5]"/></p></li>
				</ul>
            </div>
        </li>
    </xsl:template>
</xsl:stylesheet>
