$(function($) {
	var curenntTournamentID = 0;
	var contentElement = $('#game-content .game-content-nano-content');
	var betContent = $('#bet-content .game-content-nano-content');
	var betList = {};
	var userCurrentBalance = window._BALANCE;
	
	
	$('.tournament').click(function(){
		var tournamentID = parseInt( $(this).data('tournament-id'));
		if(curenntTournamentID != tournamentID) {
			//console.log(tournamentID);
			curenntTournamentID = tournamentID;
			contentElement.html('<p style="font-size: 300%; text-align: center;"><a><i class="fa fa-spinner fa-spin"></i></a></p>');
			$.ajax({
				  url: window._URL + "games?tournamentID="+tournamentID,
				  type: "GET",
				  dataType: "json",
				  success : generateGames
				});
		}
		return false;
	});
	function loadLastGames() {
		$.ajax({
		  url: window._URL + 'games/last',
		  type: "GET",
		  dataType: "json",
		  success : function(resData){
			  console.log(resData);
			  generateGames(resData);
		  }
		});
	}
	function generateGames(data) {
		var html = '';
		for(var i=0; i<data.length; ++i) {
			html += generateBox(data[i]);
		}
		contentElement.html(html);
		contentElement.find('.action').click(function(){
			if(window._IS_LOGINED) {
				var el = $(this);
				var data = el.data();
				var gameData = el.closest('.main-box').find('header').data();
				data.gameId = gameData.id;
				data.gameName = gameData.name;
				data.key = data.gameId + '-' + data.betType;
				addToBetList(data);
			} else {
				betContent.html('<p style="font-size: 14px;">You can not bet,<br>Please <a href="'+window._REGISTRATION_PAGE+'">register</a> or <a href="'+window._LOGIN_PAGE+'">login</a> your account</p>');
			}
		});
		contentElement.find('.show-hide-content').click(function(){
			var el = $(this);
			var icon = el.find('i');
			var mainBox = el.closest('.main-box');
			var data = mainBox.data();
			if(parseInt(data.isShow)) {
				mainBox.data('is-show', 0);
				icon.addClass('fa-eye-slash');
				icon.removeClass('fa-eye');
				mainBox.find('.main-box-body').hide();
				mainBox.find('.first-or-all-btn').hide();
			} else {
				mainBox.data('is-show', 1);
				icon.addClass('fa-eye');
				icon.removeClass('fa-eye-slash');
				mainBox.find('.main-box-body').show();
				mainBox.find('.first-or-all-btn').show();
			}
		});
		contentElement.find('.first-or-all-btn').click(function(){
			var el = $(this);
			var icon = el.find('i');
			var mainBox = el.closest('.main-box');
			var data = mainBox.data();
			//only-first-show
			if(parseInt(data.onlyFirstShow)) {
				mainBox.data('only-first-show', 0);
				icon.addClass('fa-angle-up');
				icon.removeClass('fa-angle-down');
				mainBox.find('.other-blocks').show();
			} else {
				mainBox.data('only-first-show', 1);
				icon.addClass('fa-angle-down');
				icon.removeClass('fa-angle-up');
				mainBox.find('.other-blocks').hide();
			}
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
				var val = b.find('.bet-count').data('value');
				var key = b.attr('id'); 
				val = parseInt(val);
				delete betList[key];
				if(isNaN(val)) val = 0;
				userCurrentBalance += val;
				displayUserCurrentBalance();
				b.fadeOut('fast', function(){
					b.remove();
				});
			});
			box.find('.bet-count').change(chnageBet);
			box.find('.bet-count').keyup(chnageBet);
			box.find('.bet').click(bet);
		}
	}
	function bet() {
		var el = $(this);
		if(el.data('wait')) return;
		var b = el.closest('.main-box');
		var result = b.find('.bet-result');
		var key = b.attr('id');
		var coefficient = betList[key].betCoefficient;
		var betCount = parseInt(b.find('.bet-count').val());
		if(!isNaN(betCount) && betCount) {
			var data = {
				amount:betCount,
				games:[{
					gameId:betList[key].gameId,
					betType:betList[key].betType
				}]
			};
			el.data('wait', true);
			b.find('.bet-count').attr('readonly', true);
			b.find('.rem-box').fadeOut('fast');
			el.html('<i class="fa fa-refresh fa-spin"></i> Wait ');
			console.log(window._URL + 'games/bet');
			console.log({data : JSON.stringify(data)});
			$.ajax({
			  url: window._URL + 'games/bet',
			  type: "POST",
			  dataType: "json",
			  data : {data : JSON.stringify(data)},
			  success : function(resData){
				  //TODO
				  b.find('.main-box-body').html('OK');
				  //b.find('.main-box-body').html(resData.infoText);
				  setTimeout(function(){
					  b.slideUp( 400, function(){
						  b.remove();  
					  });
				  }, 15000);
			  }
			});
			
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
		displayUserCurrentBalance();
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
		box += '<input type="number" class="form-control bet-count" data-value="0" value=""></td>';
		box += '</div>';
		box += '<div class="col-xs-3">';
		box += '<button type="button" class="btn btn-default btn-block bet"><i class="fa fa-check"></i> Bet </button>';
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
		var key, key2;
		var name2Title = {
			
		't_p1' : 'П1',         't_t1_s_yes' : 'да',
		't_p2' : 'П2',         't_t1_s_no'  : 'нет',
		't_x'  : 'X',          't_t2_s_yes' : 'да',
		't_1x' : '1X',         't_t2_s_no'  : 'нет',
		't_12' : '12',         't_s_yes'    : 'да',
		't_x2' : 'X2',         't_s_no'     : 'нет',

		't_b_05' : 'Б',    't_b1_05' : 'Б',    't_b2_05' : 'Б',
		't_b_15' : 'Б',    't_b1_15' : 'Б',    't_b2_15' : 'Б',
		't_b_25' : 'Б',    't_b1_25' : 'Б',    't_b2_25' : 'Б',
		't_b_35' : 'Б',    't_b1_35' : 'Б',    't_b2_35' : 'Б',
		't_b_45' : 'Б',    't_b1_45' : 'Б',    't_b2_45' : 'Б',
		't_b_55' : 'Б',    't_b1_55' : 'Б',    't_b2_55' : 'Б',

		't_m_05' : 'М',     't_m1_05' : 'М',    't_m2_05' : 'М',
		't_m_15' : 'М',     't_m1_15' : 'М',    't_m2_15' : 'М',
		't_m_25' : 'М',     't_m1_25' : 'М',    't_m2_25' : 'М',
		't_m_35' : 'М',     't_m1_35' : 'М',    't_m2_35' : 'М',
		't_m_45' : 'М',     't_m1_45' : 'М',    't_m2_45' : 'М',
		't_m_55' : 'М',     't_m1_55' : 'М',    't_m2_55' : 'М'
		
		
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
		var toCoefficientSting = function(str) {
			var ret = null;
			switch(str.substr(-2)) {
				case '05' : ret = 0.5; break;
				case '15' : ret = 1.5; break;
				case '25' : ret = 2.5; break;
				case '35' : ret = 3.5; break;
				case '45' : ret = 4.5; break;
				case '55' : ret = 5.5; break;
			}
			return ret;
		}
		var subBox = '';
		var box = '<div class="main-box clearfix" data-is-show="1" data-only-first-show="1">';
		box += '<header class="main-box-header clearfix" data-id="'+data.id+'" data-name="'+data.nameRU+'">';
		box += '<h2 class="pull-left">';
		box += data.nameRU;
		box += '</h2>';
		
		box += '<div class="icon-box pull-right">';
		box += '<a href="#" class="btn pull-left first-or-all-btn"><i class="fa fa-angle-down"></i></a>';
		box += '<a href="#" class="btn pull-left show-hide-content"><i class="fa fa-eye"></i></a>';
		box += '</div>';
		box += '</header>';
		
		
		box += '<div class="main-box-body clearfix">';
		box += '<div class="row">';
		box += '<div class="col-lg-12">';
		
		box += '<div class="first-block">';
		
		if(data['t_p1'] && data['t_p2'] && data['t_x']) {
			box += '<div class="name"> Исход </div>';
			box += '<div class="btn-group btn-group-justified">';
			
			box += '<div class="btn-group">';
			box += getRowBtn('t_p1', data['t_p1']);
			box += '</div>';
			
			box += '<div class="btn-group">';
			box += getRowBtn('t_x', data['t_x']);
			box += '</div>';
			
			box += '<div class="btn-group">';
			box += getRowBtn('t_p2', data['t_p2']);
			box += '</div>';
			
			box += '</div>';
		}
		box += '</div>';
		box += '<div class="other-blocks" style="display: none;">';
	
		
		if(data['t_1x'] && data['t_12'] && data['t_x2']) {
			box += '<br/><div class="name"> Двойной шанс </div>';
			box += '<div class="btn-group btn-group-justified">';
			
			box += '<div class="btn-group">';
			box += getRowBtn('t_1x', data['t_1x']);
			box += '</div>';
			
			box += '<div class="btn-group">';
			box += getRowBtn('t_12', data['t_12']);
			box += '</div>';
			
			box += '<div class="btn-group">';
			box += getRowBtn('t_x2', data['t_x2']);
			box += '</div>';
			
			box += '</div>';
		}
		subBox = '';
		for(key in data) {
			if(key.indexOf('t_b_') == 0) {
				key2 = 't_m_' + key.substr(-2);
				if(data[key] && data[key2]) {
					subBox += '<div class="btn-group btn-group-justified">';
					subBox += '<div class="btn-group">';
					subBox += getRowBtn(key, data[key], toCoefficientSting(key));
					subBox += '</div>';
					
					subBox += '<div class="btn-group">';
					subBox += getRowBtn(key2, data[key2], toCoefficientSting(key2));
					subBox += '</div>';
					subBox += '</div>';
					
				}
			}
		}
		if(subBox) {
			box += '<br/><div class="name"> Тотал </div>';
			box += subBox;
		}
		subBox = '';
		for(key in data) {
			if(key.indexOf('t_b1_') == 0) {
				key2 = 't_m1_' + key.substr(-2);
				if(data[key] && data[key2]) {
					subBox += '<div class="btn-group btn-group-justified">';
					subBox += '<div class="btn-group">';
					subBox += getRowBtn(key, data[key], toCoefficientSting(key));
					subBox += '</div>';
					
					subBox += '<div class="btn-group">';
					subBox += getRowBtn(key2, data[key2], toCoefficientSting(key2));
					subBox += '</div>';
					subBox += '</div>';
				}
			}
		}
		if(subBox) {
			box += '<br/><div class="name"> Тотал ком.1 </div>';
			box += subBox;
		}
		subBox = '';
		for(key in data) {
			if(key.indexOf('t_b2_') == 0) {
				key2 = 't_m2_' + key.substr(-2);
				if(data[key] && data[key2]) {
					subBox += '<div class="btn-group btn-group-justified">';
					subBox += '<div class="btn-group">';
					subBox += getRowBtn(key, data[key], toCoefficientSting(key));
					subBox += '</div>';
					
					subBox += '<div class="btn-group">';
					subBox += getRowBtn(key2, data[key2], toCoefficientSting(key2));
					subBox += '</div>';
					subBox += '</div>';
				}
			}
		}
		if(subBox) {
			box += '<br/><div class="name"> Тотал ком.2 </div>';
			box += subBox;
		}
		subBox = '';
		if(data['t_t1_s_yes'] && data['t_t1_s_no']) {
			
			subBox += '<div class="btn-group btn-group-justified">';
			subBox += '<div class="btn-group">';
			subBox += getRowBtn('t_t1_s_yes', data['t_t1_s_yes'], toCoefficientSting('t_t1_s_yes'));
			subBox += '</div>';
			
			subBox += '<div class="btn-group">';
			subBox += getRowBtn('t_t1_s_no', data['t_t1_s_no'], toCoefficientSting('t_t1_s_no'));
			subBox += '</div>';
			subBox += '</div>';
		}
		if(subBox) {
			box += '<br/><div class="name"> Гол во 1-ом тайме </div>';
			box += subBox;
		}
		subBox = '';
		if(data['t_t2_s_yes'] && data['t_t2_s_no']) {
			
			subBox += '<div class="btn-group btn-group-justified">';
			subBox += '<div class="btn-group">';
			subBox += getRowBtn('t_t2_s_yes', data['t_t2_s_yes'], toCoefficientSting('t_t2_s_yes'));
			subBox += '</div>';
			
			subBox += '<div class="btn-group">';
			subBox += getRowBtn('t_t2_s_no', data['t_t2_s_no'], toCoefficientSting('t_t2_s_no'));
			subBox += '</div>';
			subBox += '</div>';
		}
		if(subBox) {
			box += '<br/><div class="name"> Гол во 2-ом тайме </div>';
			box += subBox;
		}
		subBox = '';
		if(data['t_s_yes'] && data['t_s_no']) {
			
			subBox += '<div class="btn-group btn-group-justified">';
			subBox += '<div class="btn-group">';
			subBox += getRowBtn('t_s_yes', data['t_s_yes'], toCoefficientSting('t_s_yes'));
			subBox += '</div>';
			
			subBox += '<div class="btn-group">';
			subBox += getRowBtn('t_s_no', data['t_s_no'], toCoefficientSting('t_s_no'));
			subBox += '</div>';
			subBox += '</div>';
		}
		if(subBox) {
			box += '<br/><div class="name"> Гол в обоих таймах </div>';
			box += subBox;
		}
		subBox = '';
		
		box += '</div>';


		box += '</div>';
		box += '</div>';
		box += '</div>';
		box += '</div>';
		return box;
	}
	function displayUserCurrentBalance() {
		$('.user-balance').html(userCurrentBalance);
	}
	loadLastGames();
});

