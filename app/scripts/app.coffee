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
		# e.preventDefault();
		console.log(e.originalEvent.wheelDelta)
		scrollHandler($('.hero-unit'), e.originalEvent.wheelDelta)

	$('.up, .down').on 'click', (e) ->
		adjustNumbers(e);

	adjustNumbers = (e) ->
		if($(e.target).hasClass('up'))
			console.log('up')
		else if($(e.target).hasClass('down'))
			console.log('down')

	scrollHandler = (target, delta)->
		current = parseInt(target.css('height'), 10)
		newheight = current + delta + 'px'
		console.log('newheight', newheight)
		console.log((current + delta >= 600))

		if (current + delta >= 600)
			return

		target.css(
			height: newheight
		)


	@
	# return '\'Allo \'Allo!';
);
