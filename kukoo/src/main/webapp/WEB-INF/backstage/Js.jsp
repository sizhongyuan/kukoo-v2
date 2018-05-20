<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <!-- javascript -->
       <!--  <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script> -->
        
        <script src="<%=basePath %>backstage/js/jquery.js"></script>
        <script src="<%=basePath %>backstage/js/jquery-ui.min.js"></script>
        <script src="<%=basePath %>backstage/js/bootstrap.js"></script>
        <script src="<%=basePath %>backstage/js/uniform/jquery.uniform.js"></script>
        <script src="<%=basePath %>backstage/js/peity/jquery.peity.js"></script>

        <script src="<%=basePath %>backstage/js/select2/select2.js"></script>
        <script src="<%=basePath %>backstage/js/knob/jquery.knob.js"></script>
        <script src="<%=basePath %>backstage/js/flot/jquery.flot.js"></script>
        <script src="<%=basePath %>backstage/js/flot/jquery.flot.resize.js"></script>
        <script src="<%=basePath %>backstage/js/flot/jquery.flot.categories.js"></script>
        <script src="<%=basePath %>backstage/js/wysihtml5/wysihtml5-0.3.0.js"></script>
        <script src="<%=basePath %>backstage/js/wysihtml5/bootstrap-wysihtml5.js"></script>
        <script src="<%=basePath %>backstage/js/calendar/fullcalendar.js"></script> <!-- this plugin required jquery ui-->

        <!-- required stilearn template js, for full feature-->
        <script src="<%=basePath %>backstage/js/holder.js"></script>
        <script src="<%=basePath %>backstage/js/stilearn-base.js"></script>
        <%-- <script src="<%=basePath%>/pages/js/jsJsp.js"></script>
        <script src="<%=basePath%>/pages/js/util/util.js"></script> --%>
        
        
		<script src="<%=basePath %>backstage/js/wizard/jquery.ui.widget.js"></script> <!-- this required for jquery.wizard-->
        <script src="<%=basePath %>backstage/js/wizard/jquery.wizard.js"></script>