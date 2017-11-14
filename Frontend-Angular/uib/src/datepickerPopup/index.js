require('../datepicker');
require('../position');
require('../../template/datepickerPopup/popup.html.js');

require('./popup.css');

var MODULE_NAME = 'ui.bootstrap.module.datepickerPopup';

angular.module(MODULE_NAME, ['ui.bootstrap.datepickerPopup', 'uib/template/datepickerPopup/popup.html']);

module.exports = MODULE_NAME;
