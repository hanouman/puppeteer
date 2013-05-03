define ['backbone'], (backbone) ->
	object = null

	beforeEach ->
		object =
			method: ->

	describe 'Sample spec', ->
		it 'sample equal assertion', ->
			"Foo".should.equal "Foo"

		it 'sample RequireJS import', ->
			backbone.should.exist

		it 'sample sinon spy', ->
			spy = sinon.spy object, "method"

			object.method 1

			spy.should.have.been.calledWith 1

		it 'sample sinon stub', ->
			stub = sinon.stub object, "method"
			stub.withArgs(42).returns(1)

			object.method(42).should.equal 1

		it 'sample async', (done) ->
			async = ->
				1.should.equal 1
				done()

			setTimeout async, 10