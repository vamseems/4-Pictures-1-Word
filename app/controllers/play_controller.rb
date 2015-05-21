class PlayController < ApplicationController
	def index
		@pics = Pictures.all
		@last_id = Pictures.last.id
		@rand = 1
		while 1 do
			@rand = Random.rand(@last_id) + 1
			if not (@rand == 2)
				break
			end
		end
		@attempts = 3
		@tag = Pictures.find(@rand)
		@selected = Pictures.where(tag: @tag.tag)
	end

	def saveScore
		@score = Scores.new
		@stored_score = cookie[:score]
	end
end
