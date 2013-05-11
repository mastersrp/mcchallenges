<?
	require( 'template' )
	template.init()

	template.set( 'web/header.html' )
?>

<input type="text" class="search-query span12" ng-model="query" ng-placeholder="filter"/>

<div class="content well span12" ng-controller="ChallengesCtrl">
	<table class="table">
		<tr>
			<th>
				Challenges
			</th>
		</tr>
		<tr ng-repeat="challenge in challenges | filter:query">
			<td>
				<a href="/challenges/{{ challenge.url }}">{{ challenge.name }}</a>
			</td>
		</tr>
	</table>
</div>

<script src="/challenges/db.js"></script>

<?
	template.set( 'web/footer.html' )
?>
