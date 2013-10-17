<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<div class="navigator">
    <div class="navigator-wrapper">
        <div class="top-left-logo"><a href="/" class="logo-ref">
            <div class="logo">
                <div class="logo-img">
                    <img src="${pageContext.request.contextPath}/assets/images/logo.png"/>
                </div>
                <div class="logo-text">Handmade Online</div>
            </div>
        </a></div>
        <div class="nav-list">
            <div class="nav-list-content">
                <div class="cate-item">
                    <div class="main-cate">
                        <div class="cate-text href"><a href="${pageContext.request.contextPath}/admin/user/list">Người
                            dùng</a>
                        </div>
                    </div>
                </div>
                <div class="cate-item">
                    <div class="main-cate">
                        <div class="cate-text href"><a href="${pageContext.request.contextPath}/admin/product/list">Sản
                            phẩm</a></div>
                    </div>
                </div>
                <div class="cate-item">
                    <div class="main-cate">
                        <div class="cate-text"><a href="${pageContext.request.contextPath}/admin/category/list">Loại sản
                            phẩm</a></div>
                    </div>
                </div>
                <div class="cate-item">
                    <div class="main-cate">
                        <div class="cate-text"><a href="${pageContext.request.contextPath}/admin/order/list">Đơn
                            hàng</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>