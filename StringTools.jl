function mutateString(str::AbstractString, substitude::AbstractChar, index::Integer)
    front = str[1:index-1]
    posterior = str[index+1:end]
    str = front * substitude * posterior
    return str
end

function mutateString(str::AbstractString, substitude::AbstractString, startIndex::Integer)
    strLength = length(str)
    sLength = length(substitude)
    if sLength+startIndex-1 > strLength
        error("Index is larger than length of string. \n Length of string: $strLength. \n Length of substitude: $sLength. Starting index: $startIndex")
    end

    front = str[1:startIndex-1]
    posterior = str[startIndex+sLength:end]
    str = front * substitude * posterior
    return str
end

function stringDrop(str::AbstractString, index::Integer)
    front = str[1:index-1]
    posterior = str[index+1:end]
    str = front * posterior
    return str
end

function stringDrop(str::AbstractString, startIndex::Integer, endIndex::Integer)
    front = str[1:startIndex-1]
    posterior = str[endIndex+1:end]
    str = front * posterior
    return str
end