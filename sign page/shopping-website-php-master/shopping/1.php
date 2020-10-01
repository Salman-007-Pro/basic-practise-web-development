
<div class=maintext>
<h1>Welcome to Tarun and Vipul Properties</h1>
<h3>Properties Unlimited! at best prices</h3>
</div>
<% if signed_in? %>
<table class="front" summary="For signed-in users">
<tr>
<td class="main">
<h2 class="sellprop">Please list your property here!</h2>
<%= render 'shared/sellprop_form' %>
</td>
<td class="sidebar round">
<strong>Name</strong> <%= @current_user.name %><br />
<strong>URL</strong> <%= link_to user_path(@current_user), @current_user %><br />
<strong>Properties Listed</strong> <%= @current_user.sellprops.count %>
</td>
</tr>
</table>
<% else %>
<%= link_to "Sign up now!",signup_path,:class=> "signup_button round" %>
<div class="wrapper">

	<!-- Beginning of the slider markup -->
	<div id="metaContainer">
	
		<div class="whatsHot"></div>
	
		<div class="backLink"><a href="#" title="Back" id="back">Back</a></div>
		
		<!-- The sliderr works with virtually any HTML element (div, span etc) but for the sake of simplicity I have used images in this demo -->
		<div id="slideContainer">
			<div id="slideShim">
				<a href="#"><img src="slides/slide-one.png" alt="Slide One" /></a>
				<a href="#"><img src="slides/slide-two.png" alt="Slide Two" /></a>
				<a href="http://www.premiumpixels.com"><img src="slides/slide-three.png" alt="Premum Pixels" /></a>
			</div>
		</div>
		
		<div class="forwardLink"><a href="#" title="Forward" id="forward">Forward</a></div>
		
		<div id="pager" class="clear"></div>
	</div>
<% end %>