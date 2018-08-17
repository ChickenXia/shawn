function doDelete(contractId){
BootstrapDialog.show({
			title : '删除',
			message : '确认删除这条记录吗',
			buttons : [ {
				label : '是',
				cssClass : 'btn btn-danger model-tool-right',
				action :function(dialog){   //给当前按钮添加点击事件
					window.location.href="contractController/del.do?contractId="+contractId;
			        dialog.close();
			      }
			}, {
				label :  $translate.instant('common.cancel'),
				cssClass : 'btn btn-default model-tool-left',
				action : function(dialogItself) {
					dialogItself.close();
				}
			} ]
		});

}