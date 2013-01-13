package com.mitsuruog.backbone.sync.sastruts.action;

import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.Globals;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;
import org.seasar.struts.util.MessageResourcesUtil;
import org.seasar.struts.util.RequestUtil;

import com.mitsuruog.backbone.sync.sastruts.form.GuestBookForm;

public class GuestBookAction {

	@ActionForm
	@Resource
	protected GuestBookForm guestBookForm;

    @Execute(validator = false)
	public String index() {
    	return null;
	}

    @Execute(validator = false, urlPattern="{id}")
    public String get(){
    	return null;
    }

    @Execute(validator = false, urlPattern="add")
	public String add() {
    	return null;
	}

    @Execute(validator = false, urlPattern="{id}/update")
	public String update() {
    	return null;
	}

    @Execute(validator = false, urlPattern="{id}/delete")
	public String delete() {
    	return null;
	}

    @Execute(validator = false)
    public String validationMessageToJson(){

    	//エラーメッセージを取得
    	HttpServletRequest req = RequestUtil.getRequest();
    	ActionMessages messages = (ActionMessages)req.getAttribute(Globals.ERROR_KEY);
        if(messages == null) {
        	return null;
        }

        //
        //List<String> messageList = new ArrayList<String>();
        for(Iterator<?> iterator = messages.get(); iterator.hasNext();){
        	ActionMessage message = (ActionMessage)iterator.next();
        	MessageResourcesUtil.getMessage(message.getKey(), message.getValues());
        }


    	//ResponseUtil.write(JSON.encode(), "application/json");
    	return null;
    }

}
