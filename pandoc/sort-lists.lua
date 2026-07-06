local function to_text(item)
	-- Helper to convert a list item's inline elements to a plain string for sorting
	return pandoc.utils.stringify(item)
end

function BulletList(el)
	table.sort(el.content, function(a, b)
		return to_text(a) < to_text(b)
	end)
	return el
end

function OrderedList(el)
	table.sort(el.content, function(a, b)
		return to_text(a) < to_text(b)
	end)
	return el
end
