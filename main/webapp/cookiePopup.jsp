<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    boolean showPopup = true;

    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("hidePopup".equals(c.getName())) {
                showPopup = false;
                break;
            }
        }
    }

    // requestScope에 저장
    request.setAttribute("showPopup", showPopup);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cookie Popup</title>
</head>
<body>

    <h1>Cookie 팝업 적용 페이지</h1>

    <div id="popup" style="display: ${showPopup ? 'block' : 'none'};">
        <p>팝업창</p>
        <button type="button" id="btn">
            10초 동안 보지 않기
        </button>
    </div>

    <a href="cookie.jsp">cookie.jsp</a>

    <script>
        const btn = document.getElementById("btn");
        const popup = document.getElementById("popup");

        btn.addEventListener("click", hidePopup);

        async function hidePopup() {
            try {
                const response = await fetch(
                    "/hidePopup",
                    { method: "POST" }
                );
                if (!response.ok) {
                    throw new Error("쿠키 저장 실패");
                }
                popup.style.display = "none";
            } catch (error) {
                console.error(error);
            }
        }
    </script>
</body>
</html>