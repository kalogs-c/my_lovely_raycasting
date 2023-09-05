Vector = {}

function Vector.new(x, y)
	return {
		x = x,
		y = y,
	}
end

-- @param vec Vector
-- @param modifier number
function Vector.multiply(vec, modifier)
	return Vector.new(vec.x * modifier, vec.y * modifier)
end

-- @param vec1 Vector
-- @param vec2 Vector
function Vector.sum_vectors(vec1, vec2)
	return Vector.new(vec1.x + vec2.x, vec1.y + vec2.y)
end

function Vector.magnitude(vec)
	return math.sqrt(vec.x * vec.x + vec.y * vec.y)
end
