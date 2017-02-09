export default {
  name: 'doTwitchChat',
  initialize() {
		$('#chatbar-button').bind('click', function(e){
			console.log("Click");
		});
  }
};