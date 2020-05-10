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
					<li><p>Review1: <xsl:value-of select="reviews/review1"/></p></li>
					<li><p>Review2: <xsl:value-of select="reviews/review2"/></p></li>
					<li><p>Review3: <xsl:value-of select="reviews/review3"/></p></li>
					<li><p>Review4: <xsl:value-of select="reviews/review4"/></p></li>
					<li><p>Review5: <xsl:value-of select="reviews/review5"/></p></li>
				</ul>
            </div>
        </li>
    </xsl:template>
</xsl:stylesheet>
