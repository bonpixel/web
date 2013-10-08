# global define
define(['jquery'], ($) ->

	'use strict'

	master = []

	(->
		$('.numwrap').each((index,el)->
			master[index] = []
			$('span', el).each((index2,el2)->
				master[index][index2] = parseInt($(el2).html(), 10)
			)
		)
		console.dir(master)
	)();

	$('body').on 'mousewheel', (e)->
		e.preventDefault();
		console.log(e.originalEvent.wheelDelta)
		scrollHandler($('.content'), e.originalEvent.wheelDelta)

	$('.up, .down').on 'click', (e) ->
		adjustNumbers(e);

	adjustNumbers = (e) ->
		if($(e.target).hasClass('up'))
			console.log('up')
		else if($(e.target).hasClass('down'))
			console.log('down')

	scrollHandler = (target, delta)->

		current = parseInt(target.css('top'), 10)
		newposition = current + delta + 'px'
		console.log(newposition)

		target.css(
			top: newposition
		)


	@
	# return '\'Allo \'Allo!';
);
