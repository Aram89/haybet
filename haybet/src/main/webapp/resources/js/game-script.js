$(function($) {
	var curenntTournamentID = 0;
	var contentElement = $('#game-content .game-content-nano-content');
	var betContent = $('#bet-content .game-content-nano-content');
	var betList = {};
	var userCurrentBalance = 150000;
	
	$('.tournament').click(function(){
		var tournamentID = parseInt( $(this).data('tournament-id'));
		if(curenntTournamentID != tournamentID) {
			console.log(tournamentID);
			curenntTournamentID = tournamentID;
			$.ajax({
				  url: "?tournamentID="+tournamentID,
				  type: "GET",
				  dataType: "json",
				  success : generateGames
				});
		}
		return false;
	})
	function generateGames(data) {
		var html = '';
		for(var i=0; i<data.length; ++i) {
			html += generateBox(data[i]);
		}
		contentElement.html(html);
		contentElement.find('.action').click(function(){
			var el = $(this);
			var data = el.data();
			var gameData = el.closest('.main-box').find('header').data();
			data.gameId = gameData.id;
			data.gameName = gameData.name;
			data.key = data.gameId + '-' + data.betType;
			addToBetList(data);
		});
		$('#game-content').nanoScroller({
	    	alwaysVisible: false,
	    	iOSNativeScrolling: false,
	    	preventPageScrolling: true,
	    	contentClass: 'game-content-nano-content'
	    });
		
	}
	
	function addToBetList(data) {
		if(betList[data.key] === undefined) {
			betList[data.key] = data;
			var box = $(getBetBox(data));
			betContent.append(box);
			box.fadeIn('fast');
			box.find('.rem-box').click(function(){
				var b = $(this).closest('.main-box');
				var val = b.find('.bet').data('value');
				var key = b.attr('id'); 
				val = parseInt(val);
				delete betList[key];
				if(isNaN(val)) val = 0;
				userCurrentBalance += val;
				b.fadeOut('fast', function(){
					b.remove();
				});
			});
			box.find('.bet').change(chnageBet);
			box.find('.bet').keyup(chnageBet);
		}
	}
	function chnageBet() {
		var el = $(this);
		var b = el.closest('.main-box');
		var result = b.find('.bet-result');
		var key = b.attr('id');
		var coefficient = betList[key].betCoefficient;
		var oldVal = el.data('value');
		
		oldVal = parseInt(oldVal);
		if(isNaN(oldVal)) oldVal = 0;
		
		newVal = parseInt(el.val());
		if(isNaN(newVal)) newVal = 0;
		var currBalance = userCurrentBalance + oldVal;
		if(newVal > currBalance) {
			newVal = currBalance;
		}
		userCurrentBalance = currBalance - newVal;
		el.data('value', newVal);
		if(newVal) {
			result.html(parseInt(coefficient * newVal));
		} else {
			result.html('');
		}
		el.val(newVal);
	}
	function getBetBox(bet) {
		
		var box = '';	
			
		box += '<div id="'+bet.key+'" class="main-box clearfix" style="display:none;">';
		box += '<header class="main-box-header clearfix">';
		box += '<h2 class="pull-left">';
		box += bet.gameName;
		box += '</h2>';
		box += '<div class="pull-right">';
		box += '<button type="button" class="btn btn-danger rem-box"><i class="fa fa-trash-o"></i></button>';
		box += '</div>';
		box += '</header>';
		//box += '<h2>'+betList[i].gameName+'</h2>';
		box += '<div class="main-box-body clearfix">';
		box += '<div class="row">';
		box += '<div class="col-lg-12">';
		box += '<div class="row">';
		box += '<div class="col-xs-3">';
		box += bet.betTitle;
		box += '</div>';
		box += '<div class="col-xs-3">';
		box += bet.betCoefficient;
		box += '</div>';
		box += '<div class="col-xs-6 bet-result">';
		box += '</div>';
		box += '</div>';
		
		box += '<div class="row">';
		box += '<div class="col-xs-9">';
		box += '<input type="number" class="form-control bet" data-value="0" value=""></td>';
		box += '</div>';
		box += '<div class="col-xs-3">';
		box += '<button type="button" class="btn btn-default btn-block"><i class="fa fa-trash-o"></i></button>';
		box += '</div>';
		box += '</div>';
		
		
		box += '</p>';
		box += '</div>';
		box += '</div>';
		box += '</div>';
		
		box += '</div>';
		
		
		
		return box;
		
		
		
	}
	
	
	
	
	function generateBox(data) {
		var name2Title = {
			'p1' : 'П1',        'p2' : 'П2',
			'x'  : 'X',         'x1' : '1X',
			'x12': '12',        'x2' : 'X2',
			'f1' : 'Ф1',        'f2' : 'Ф2',
			'b'  : 'Б',         'm'  : 'М',
			'b1' : 'Б',         'm1' : 'М',
			'b2' : 'Б',         'm2' : 'М'
		};
		var getRowBtn = function(name, coefficient, coefficientSting) {
			coefficientSting = coefficientSting || '';
			var title = name2Title[name];
			var coefficientTitle = coefficient;
			if(coefficientSting) {
				title += ' ('+ coefficientSting +')';
			}
			return '<button type="button" class="btn btn-primary action" data-bet-title="'+title+'" data-bet-type="'+name+'" data-bet-coefficient="'+coefficient+'" data-bet-coefficient-string="'+coefficientSting+'" style="border-left:1px solid; border-right:1px solid;"><span class="pull-left">'+title+'</span> <span class="pull-right badge">'+coefficient+'</span></button>';
		};
		
		var box = '<div class="main-box clearfix">';
		box += '<header class="main-box-header clearfix" data-id="'+data.id+'" data-name="'+data.nameRU+'">';
		box += '<h2 class="pull-left">';
		box += data.nameRU;
		box += '</h2>';
		
		box += '<div class="icon-box pull-right"> <a href="#" class="btn pull-left"> <i class="fa fa-eye"></i> </a> </div>';
		box += '</header>';
		
		
		box += '<div class="main-box-body clearfix">';
		box += '<div class="row">';
		box += '<div class="col-lg-12">';
		

		if(data['p1'] && data['p2'] && data['x']) {
			box += '<div class="name"> Исход </div>';
			box += '<div class="btn-group btn-group-justified">';
			
			box += '<div class="btn-group">';
			box += getRowBtn('p1', data['p1']);
			box += '</div>';
			
			box += '<div class="btn-group">';
			box += getRowBtn('x', data['x']);
			box += '</div>';
			
			box += '<div class="btn-group">';
			box += getRowBtn('p2', data['p2']);
			box += '</div>';
			
			box += '</div>';
		}
			
		if(data['x1'] && data['x12'] && data['x2']) {
			box += '<br/><div class="name"> Двойной шанс </div>';
			box += '<div class="btn-group btn-group-justified">';
			
			box += '<div class="btn-group">';
			box += getRowBtn('x1', data['x1']);
			box += '</div>';
			
			box += '<div class="btn-group">';
			box += getRowBtn('x12', data['x12']);
			box += '</div>';
			
			box += '<div class="btn-group">';
			box += getRowBtn('x2', data['x2']);
			box += '</div>';
			
			box += '</div>';
		}
		if(data['f1'] && data['f1']) {
			box += '<br/><div class="name"> Фора </div>';
			box += '<div class="btn-group btn-group-justified">';
			
			box += '<div class="btn-group">';
			box += getRowBtn('f1', data['f1'], data['f1_s']);
			box += '</div>';
			
			box += '<div class="btn-group">';
			box += getRowBtn('f2', data['f2'], data['f2_s']);
			box += '</div>';
			
			box += '</div>';
		}
		if(data['b'] && data['m']) {
			box += '<br/><div class="name"> Тотал </div>';
			box += '<div class="btn-group btn-group-justified">';
			
			box += '<div class="btn-group">';
			box += getRowBtn('b', data['b'], data['b_s']);
			box += '</div>';
			
			box += '<div class="btn-group">';
			box += getRowBtn('m', data['m'], data['m_s']);
			box += '</div>';
			
			box += '</div>';
		}
		if(data['b1'] && data['m1']) {
			box += '<br/><div class="name"> Тотал ком.1 </div>';
			box += '<div class="btn-group btn-group-justified">';
			
			box += '<div class="btn-group">';
			box += getRowBtn('b1', data['b1'], data['b1_s']);
			box += '</div>';
			
			box += '<div class="btn-group">';
			box += getRowBtn('m1', data['m1'], data['m1_s']);
			box += '</div>';
			
			box += '</div>';
		}
		if(data['b2'] && data['m2']) {
			box += '<br/><div class="name"> Тотал ком.2 </div>';
			box += '<div class="btn-group btn-group-justified">';
			
			box += '<div class="btn-group">';
			box += getRowBtn('b2', data['b2'], data['b2_s']);
			box += '</div>';
			
			box += '<div class="btn-group">';
			box += getRowBtn('m2', data['m2'], data['m2_s']);
			box += '</div>';
			
			box += '</div>';
		}
		


		box += '</div>';
		box += '</div>';
		box += '</div>';
		box += '</div>';
		return box;
	}
});

