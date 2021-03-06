<%@include file="/WEB-INF/protected-jsp/commons/taglibs.jsp"%>
<div id="bottom">
<ul>
	<li>
	<h1><fmt:message key='label.portal.Links' /></h1>
	</li>
	<c:forEach var="link" items="${ever['vulpePortalLinks']}">
	<c:if test="${link.position == 'FOOTER'}">
	<c:if test="${link.target.value == '_blank'}"><c:set var="onclick">onclick="window.open(this.href); return false;"</c:set></c:if>
	<li><a href="${pageContext.request.contextPath}/frontend/Index/link?id=${link.id}" ${onclick}>${link.name}</a></li>
	</c:if>
	</c:forEach>
</ul>
<ul>
	<li>
	<h1><fmt:message key='label.portal.Social' /></h1>
	</li>
	<c:forEach var="social" items="${ever['vulpePortalSocial']}">
	<c:choose>
	<c:when test="${social.network == 'TWITTER'}">
		<c:if test="${social.target.value == '_blank'}"><c:set var="onclick">onclick="window.open(this.href); return false;"</c:set></c:if>
		<li><a href="http://twitter.com/${social.name}" ${onclick}>@${social.name}</a></li>
	</c:when>
	</c:choose>
	</c:forEach>
</ul>
<ul>
	<li>
	<h1><fmt:message key='label.portal.Community' /></h1>
	</li>
	<c:forEach var="community" items="${ever['vulpePortalLinks']}">
	<c:if test="${community.category.name == 'Community'}">
	<c:if test="${community.target.value == '_blank'}"><c:set var="onclick">onclick="window.open(this.href); return false;"</c:set></c:if>
	<li><a href="${community.url}" ${onclick}>${community.name}</a></li>
	</c:if>
	</c:forEach>
</ul>
<ul class="last">
	<li>
	<h1><fmt:message key='label.portal.Downloads' /></h1>
	</li>
	<c:forEach var="download" items="${ever['vulpePortalDownloads']}" begin="0" end="4">
	<li><a href="${pageContext.request.contextPath}/frontend/Index/download?id=${download.id}">${download.name}</a></li>
	</c:forEach>
	<c:if test="${fn:length(ever['vulpePortalDownloads']) > 5}">
	<a href="javascript:void(0)" onclick="vulpe.view.request.submitAjaxAction({url: 'frontend/Index/search/ajax', layerFields: 'this', layer: 'body', validate: true, queryString: 'querySearch=all-in-one ('});"><fmt:message key='label.portal.more' /></a>
	</c:if>
</ul>
</div>