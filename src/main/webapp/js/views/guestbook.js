MY.Views.Guestbook = Backbone.View.extend({

	el: '#container',

	$tableContents: $('#tableContents'),

	$inputForm: $('form'),

	events: {
		'click #create' : 'create'
	},

	initialize: function(){

		//this.inputForm = new MY.Views.InputForm();
		this.comments = new MY.Collections.Comments();

		this.comments.on('sync', this.render, this);
	},

	render: function(){
		console.log('main render');
		if(this.comments.length === 0){
			this.$tableContents.addClass('hide');
		}else{
			this.$tableContents.removeClass('hide');
		}
	},

	create: function(){
		console.log('main create');

		var param = {};
	    _.each(this.$inputForm.serializeArray(), function(input){
	    	param[input.name] = input.value;
	    });

	    //Content-Typeを偽装
	    Backbone.emulateJSON = true;
	    var model = new MY.Models.Comment(param);
	    //リクエストパラメータはAjaxのdata属性で渡す
	    this.comments.create(model, { data: param });

	},
});

new MY.Views.Guestbook();