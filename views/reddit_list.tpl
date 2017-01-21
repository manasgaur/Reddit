% for item in list:
<li>
	<div class=" thing id-{{ item['data']['name'] }} linkflair linkflair-actor link self"  
		data-fullname="{{ item['data']['name'] }}" 
		data-ups="{{ item['data']['ups'] }}" 
		data-downs="{{ item['data']['downs'] }}">
		<p class="parent"></p>
		<a class="thumbnail {{ item['data']['thumbnail'] }}" >
			% if "self" not in item['data']['thumbnail']:
			<img src="{{ item['data']['thumbnail'] }}" width="70" height="46" alt="">
			% end
		</a>
		<div class="entry unvoted RES-keyNav-activeElement lcTagged">
			<p class="title">
				<a class="title imgScanned" href="http://www.reddit.com{{ item['data']['permalink'] }}" tabindex="1">	
					{{ item['data']['title'] }}
				</a>
				<span class="domain">
					(
					<a href="http://www.reddit.com/r/{{ item['data']['subreddit'] }}/" target="_blank">{{ item['data']['domain'] }}</a>
					)
				</span>
			</p>
			<p class="tagline">
				<span> 
					(
					<span class="res_post_ups">{{ item['data']['ups'] }}</span>|
					<span class="res_post_downs">{{ item['data']['downs'] }}</span>) 
				</span>
				submitted by 
				<a href="http://www.reddit.com/user/{{ item['data']['author'] }}" class="author id-t2_9r4qc userTagged">
					{{ item['data']['author'] }}
				</a>
				<span class="RESUserTag">
					<a class="userTagLink RESUserTagImage" username="GovSchwarzenegger" title="set a tag" href="javascript:void(0)">
					</a>
				</span> 
				<span class="userattrs"></span> to 
				<a href="http://www.reddit.com/r/{{ item['data']['subreddit'] }}/" 
				class="subreddit hover">{{ item['data']['subreddit'] }}</a>
			</p>
		</div>
		<div class="child">
			<p> {{ item['data']['selftext'] }} </p>
		</div>
		<div class="clearleft"><!--IE6sux--></div>
	</div>
</li>
% end
