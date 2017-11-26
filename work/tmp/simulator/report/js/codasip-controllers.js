/*
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2016 Codasip Ltd
 *
 * All Rights Reserved.
 *
 * NOTICE: All information contained in this file, is and shall remain the property of Codasip Ltd
 * and its suppliers, if any.
 *
 * The intellectual and technical concepts contained herein are confidential and proprietary to
 * Codasip Ltd and are protected by trade secret and copyright law.  In addition, elements of the
 * technical concepts may be patent pending.
 *
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 */

 /**
  * @author Jakub Varadinek
  */

angular.element(document).ready(function() {
  angular.bootstrap(document, ['CodasipApp']);
});

	
function FilterData(){
	var _args = arguments;
	return arguments[0].filter(function(n){
		for(var i = 1; i < _args.length; i++) {
			if (n.type==_args[i])
			{
				return true;
			}
			else
			{
				continue;
			}
		}
		return false;
	});
}


var app = angular.module('CodasipApp', ['smart-table', 'ngSanitize']);

app.controller('MainController', ['$scope', function($scope) {
    
	this.isResource = function (item) {
    	 if (item.category == "Register" || item.category == "Pipeline Register" ||
				item.category == "Port" || item.category == "Register File")
			{
				return true;
			}
			else
			{
				return false;
			}
    }
	
	this.isOperator = function (item) {
    	 if (item.category != "Register" && item.category != "Pipeline Register" &&
				item.category != "Port" && item.category != "Register File")
			{
				return true;
			}
			else
			{
				return false;
			}
    }
	
    this.getStudioVersion  = function () {
    	return codasip_asips_data.information.ide_version;
    }

    this.getProjectName = function () {
    	return codasip_asips_data.information.project_name;
    }

    this.getDate = function () {
    	return codasip_asips_data.information.date;
    }
	
	this.getPerUnit = function () {
    	return codasip_asips_data.PerUnit;
    }
	
	this.getPerResource = function () {
    	return codasip_asips_data.PerResourceType;
    }
	
	$scope.PerFunctionData = this.getPerUnit();
	$scope.PerResourceData = this.getPerResource();
	
	$scope.ScheduleData = codasip_scheduling_data.table;
	$scope.ScheduleDataGeneral = codasip_scheduling_data;
	
	
	$scope.GlobalMultiplierData = FilterData($scope.PerResourceData, "Multiplier");
	$scope.GlobalAdderData = FilterData($scope.PerResourceData, "Adder");
	$scope.GlobalMultiplexerData = FilterData($scope.PerResourceData, "Multiplexer");
	$scope.GlobalComparatorData = FilterData($scope.PerResourceData, "Comparator");
	$scope.GlobalShifterData = FilterData($scope.PerResourceData, "Arithmetic Shift Right", "Arithmetic Shift Left", "Logical Shift Right","Logical Shift Left");
	
	$scope.GlobalRegisterData = FilterData($scope.PerResourceData, "Register");
	$scope.GlobalRegisterFileData = FilterData($scope.PerResourceData, "Register File");
	$scope.GlobalPipelineRegisterData = FilterData($scope.PerResourceData, "Pipeline Register");
	$scope.GlobalPortData = FilterData($scope.PerResourceData, "Port");
	
	
	$scope.TableDataResources = [
		{name : "Register File", id : "r1", data : $scope.GlobalRegisterFileData},
		{name : "Registers", id : "r2", data : $scope.GlobalRegisterData},
		{name : "Pipeline Registers", id : "r3", data : $scope.GlobalPipelineRegisterData},
		{name : "Ports", id : "r4", data : $scope.GlobalPortData}
	];
	
	$scope.TableDataOperators = [
		{name : "Adder", id : "o1", data : $scope.GlobalAdderData},
		{name : "Multiplier", id : "o2", data : $scope.GlobalMultiplierData},
		{name : "Comparator", id : "o3", data : $scope.GlobalComparatorData},
		{name : "Shifter", id : "o3", data : $scope.GlobalShifterData},
		{name : "Multiplexer", id : "o4", data : $scope.GlobalMultiplexerData}
	];

}]);

app.directive('codasipTable', function() {
	return {
		link: link,
		scope: {},
		templateUrl: 'CodasipTable.html'
	};
});
