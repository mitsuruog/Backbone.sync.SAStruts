package com.mitsuruog.backbone.sync.sastruts.form;

import org.seasar.struts.annotation.Required;

public class GuestBookForm {

	@Required
	public String name;

	@Required
	public String comment;

	public String id;
	public String registDate;

}
