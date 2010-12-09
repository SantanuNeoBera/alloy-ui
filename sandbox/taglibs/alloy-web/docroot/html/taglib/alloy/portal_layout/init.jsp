<%@ include file="/html/taglib/init-taglib.jsp" %>

<%
java.lang.String NAMESPACE = "alloy:portal-layout:";

Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("alloy:portal-layout:dynamicAttributes");
Map<String, Object> scopedAttributes = (Map<String, Object>)request.getAttribute("alloy:portal-layout:scopedAttributes");

Map<String, Object> _options = new HashMap<String, Object>();

_options.putAll(scopedAttributes);
_options.putAll(dynamicAttributes);

%>

<%@ include file="/html/taglib/alloy/init-alloy.jsp" %>

<%
java.lang.Boolean destroyed = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:portal-layout:destroyed"), false);
java.lang.Boolean initialized = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:portal-layout:initialized"), false);
java.lang.Object afterDestroy = (java.lang.Object)request.getAttribute("alloy:portal-layout:afterDestroy");
java.lang.Object afterDestroyedChange = (java.lang.Object)request.getAttribute("alloy:portal-layout:afterDestroyedChange");
java.lang.Object afterInit = (java.lang.Object)request.getAttribute("alloy:portal-layout:afterInit");
java.lang.Object afterInitializedChange = (java.lang.Object)request.getAttribute("alloy:portal-layout:afterInitializedChange");
java.lang.Object onDestroy = (java.lang.Object)request.getAttribute("alloy:portal-layout:onDestroy");
java.lang.Object onDestroyedChange = (java.lang.Object)request.getAttribute("alloy:portal-layout:onDestroyedChange");
java.lang.Object onInit = (java.lang.Object)request.getAttribute("alloy:portal-layout:onInit");
java.lang.Object onInitializedChange = (java.lang.Object)request.getAttribute("alloy:portal-layout:onInitializedChange");

_updateOptions(_options, "destroyed", destroyed);
_updateOptions(_options, "initialized", initialized);
_updateOptions(_options, "afterDestroy", afterDestroy);
_updateOptions(_options, "afterDestroyedChange", afterDestroyedChange);
_updateOptions(_options, "afterInit", afterInit);
_updateOptions(_options, "afterInitializedChange", afterInitializedChange);
_updateOptions(_options, "onDestroy", onDestroy);
_updateOptions(_options, "onDestroyedChange", onDestroyedChange);
_updateOptions(_options, "onInit", onInit);
_updateOptions(_options, "onInitializedChange", onInitializedChange);
%>

<%@ include file="init-ext.jsp" %>