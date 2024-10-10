package com.app.post.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.dao.PostDAO;
import com.app.post.Action;
import com.app.post.Result;
import com.app.vo.PostVO;

public class PostWriteOkController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

    	Result result = new Result();
    	PostVO postVO = new PostVO();
    	PostDAO postDAO = new PostDAO();
    	
        postVO.setPostTitle(req.getParameter("postTitle"));  
        postVO.setPostContent(req.getParameter("postContent"));
        
        postDAO.insert(postVO);
        
        result.setRedirect(true); 
        result.setPath("list.post"); 

        return result;
        
    }
}

