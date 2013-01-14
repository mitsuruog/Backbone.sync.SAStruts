MY.Views.Comment = Backbone.View.extend({

	el: '#comments',

	template: _.template( $('#tmpl-comment').html() ),

	render: function(){


		return this;
	}
});