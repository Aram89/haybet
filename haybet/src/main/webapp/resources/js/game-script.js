$(function($) {
	
	
	
	
	
	function generateBox(data) {
		var name2Title = {
				'p1':'П1',
				'p2':'П2',
				'x':'X',
				'x1':'1X',
				'x12':'12',
				'x2':'X2',
				'f1':'Ф1',
				'f2':'Ф2',
				'b':'Б',
				'm':'М',
				'b1':'Б',
				'm1':'М',
				'b2':'Б',
				'm2':'М'
		};
		var getRowBtn = function(name, coefficient, coefficientSting) {
			coefficientSting = coefficientSting || '';
			var title = name2Title[name];
			var coefficientTitle = coefficient;
			if(coefficientSting) {
				title += ' ('+ coefficientSting +')';
			}
			return '<button type="button" class="btn btn-primary" data-bid-type="'+name+'" data-bid-coefficient="'+coefficient+'" data-bid-coefficient-string="'+coefficientSting+'" ><span class="pull-left">'+title+'</span> <span class="pull-right badge">'+coefficient+'</span></button>';
		};
		
		var box = '<div class="main-box clearfix">';
		box += '<header class="main-box-header clearfix">';
		box += '<h2 class="pull-left">';
		box += 'Labels'; ///
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

