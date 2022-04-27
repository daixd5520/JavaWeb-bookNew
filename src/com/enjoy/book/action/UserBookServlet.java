package com.enjoy.book.action;

import com.alibaba.fastjson.JSON;
import com.enjoy.book.bean.Book;
import com.enjoy.book.biz.BookBiz;
import com.enjoy.book.util.DateHelper;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;

@WebServlet("/book2.let")
public class UserBookServlet extends HttpServlet {
    BookBiz  bookBiz = new BookBiz();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    /**
     * /book.let?type=add 添加图书
     * /book.let?type=modifypre&id=xx 修改前准备
     * /book.let?type=modify        修改
     * /book.let?type=remove&id=xx    删除
     * /book.let?type=query&pageIndex=1 :分页查询(request:转发)
     * /book.let?type=details&id=xx   展示书籍详细信息
     * /book.let?type=doajax&name=xx  :使用ajax查询图书名对应的图书信息
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter  out  = resp.getWriter();

        //验证用户是否登录
        HttpSession session = req.getSession();
//        if(session.getAttribute("user")==null){
//           out.println("<script>alert('请登录');parent.window.location.href='login.html';</script>");
//           return;
//        }


        String type = req.getParameter("type");
        switch (type){

            case "query":
                query(req,resp,out);
                break;
            case "details":
                details(req,resp,out);
                break;
            case "doajax":
                String name = req.getParameter("name");
                Book book2 = bookBiz.getByName(name);
                if(book2==null){
                    out.print("{}");//null json 对象
                }else{
                    out.print(JSON.toJSONString(book2));
                }
                break;
            default:
                resp.sendError(404);
        }
    }

    /**
     * 修改图书信息的方法
     * @param req
     * @param resp
     * @param out
     */


    /**
     * 查看图书详情
     * @param req
     * @param resp
     * @param out
     */
    private void details(HttpServletRequest req, HttpServletResponse resp, PrintWriter out) throws ServletException, IOException {
        //1.获取图书的编号
        long bookId =  Long.parseLong(req.getParameter("id"));
        //2.根据编号获取图书对象
        Book book = bookBiz.getById(bookId);
        //3.将对象保存到req
        req.setAttribute("book",book);
        //4.转发到 jsp页面
//        req.getRequestDispatcher("book_details.jsp").forward(req,resp);
    }

    /**
     * 查询
     * book.let?type=query&pageIndex=1
     * 页数: biz
     * 当前页码:pageIndex = 1
     * 存:request,转发
     * @param req
     * @param resp
     * @param out
     */
    private void query(HttpServletRequest req, HttpServletResponse resp, PrintWriter out) throws ServletException, IOException {
        //1.获取信息(页数，页码,信息)
        int pageSize = 3;
        int pageCount = bookBiz.getPageCount( pageSize);
        int pageIndex = Integer.parseInt(req.getParameter("pageIndex"));
        if(pageIndex<1){
            pageIndex = 1;
        }
        if(pageIndex>pageCount){
            pageIndex = pageCount;
        }
        List<Book> books = bookBiz.getByPage(pageIndex,pageSize);

        //2.存
        req.setAttribute("pageCount",pageCount);
        req.setAttribute("books",books);

        //3. 转发到jsp页面
        req.getRequestDispatcher("book_list2.jsp?pageIndex="+pageIndex).forward(req,resp);
    }

}
