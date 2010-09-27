<%@include file="/WEB-INF/protected-jsp/commons/tags/tagAttributes.jsp" %>
<%@ attribute name="maxlength" required="false" rtexprvalue="true" %>
<%@ attribute name="onselect" required="false" rtexprvalue="true" %>
<%@ attribute name="property" required="true" rtexprvalue="true" %>
<%@ attribute name="identifier" required="true" rtexprvalue="true" %>
<%@ attribute name="description" required="true" rtexprvalue="true" %>
<%@ attribute name="readonly" required="false" rtexprvalue="true" %>
<%@ attribute name="size" required="false" rtexprvalue="true" %>
<%@ attribute name="mask" required="false" rtexprvalue="true" %>
<%@ attribute name="icon" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="action" required="false" rtexprvalue="true" %>
<%@ attribute name="popupId" required="false" rtexprvalue="true" %>
<%@ attribute name="beforeJs" required="false" rtexprvalue="true" %>
<%@ attribute name="afterJs" required="false" rtexprvalue="true" %>
<%@ attribute name="popupProperties" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="popupExpressions" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="paramProperties" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="paramExpressions" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="paramLayerParent" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="popupLayerParent" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="paramTargetName" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="popupTargetName" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="queryString" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="requiredParamProperties" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="requiredParamExpressions" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="popupWidth" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="autocomplete" required="false" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="autocompleteMinLength" required="false" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="autocompleteValueList" required="false" rtexprvalue="true" type="java.lang.Object" %>
<%@ attribute name="autocompleteProperties" required="false" rtexprvalue="true" %>
<%@include file="/WEB-INF/protected-jsp/commons/tags/selectPopupTag.jsp" %>